import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:devstack/data/data_repository.dart';
import 'package:devstack/entities/switcher_entity.dart';

part 'switcher_bloc.freezed.dart';

@freezed
class SwitcherEvent with _$SwitcherEvent {
  const SwitcherEvent._();

  const factory SwitcherEvent.updateLocalDb() = _UpdateLocalDblEvent;

  const factory SwitcherEvent.updateSwitcher(
    List<SwitcherEntity> switcherList,
  ) = _UpdateSwitcherEvent;

  const factory SwitcherEvent.updateFromFb() = _UpdateFromFbEvent;

  const factory SwitcherEvent.periodicUpdateFb() = _PeriodicUpdateFb;

  const factory SwitcherEvent.changeSwitch(
    SwitcherEntity switcherEntity,
  ) = _ChangeSwitchEvent;
}

@freezed
class SwitcherState with _$SwitcherState {
  const SwitcherState._();

  const factory SwitcherState.initial() = InitialSwitcherState;

  const factory SwitcherState.updated({
    required List<SwitcherEntity> switchersList,
  }) = UpdatedSwitcherState;
}

class SwitcherBloc extends Bloc<SwitcherEvent, SwitcherState> {
  final DataRepositoryDb _dataRepositoryDb;
  final DataRepositoryFb _dataRepositoryFb;

  SwitcherBloc({
    required final DataRepositoryDb dataRepositoryDb,
    required final DataRepositoryFb dataRepositoryFb,
  })  : _dataRepositoryDb = dataRepositoryDb,
        _dataRepositoryFb = dataRepositoryFb,
        super(const SwitcherState.initial()) {
    on<_PeriodicUpdateFb>((event, emit) async {
      await _periodicUpdateFromFb(event, emit);
    });

    on<_UpdateLocalDblEvent>((event, emit) async {
      await _updateFromDb(event, emit);
    });

    on<_UpdateSwitcherEvent>((event, emit) {
      _updateSwitcher(event, emit);
    });

    on<_UpdateFromFbEvent>((event, emit) async {
      await _updateFromFb(event, emit);
    });

    on<_ChangeSwitchEvent>((event, emit) async {
      await _changeSwitch(event, emit);
    });
  }

  Future<void> _changeSwitch(
    _ChangeSwitchEvent event,
    Emitter<SwitcherState> emitter,
  ) async {
    await _dataRepositoryFb.changeData(event.switcherEntity);
  }

  _updateSwitcher(
    _UpdateSwitcherEvent event,
    Emitter<SwitcherState> emitter,
  ) {
    List<SwitcherEntity> switcherList = List.from(event.switcherList);
    switcherList.sort((a, b) => a.order.compareTo(b.order));
    emitter(SwitcherState.updated(switchersList: switcherList));
  }

  Future<void> _updateFromDb(
    _UpdateLocalDblEvent event,
    Emitter<SwitcherState> emitter,
  ) async {
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      var result = await _dataRepositoryDb.fetchData();
      if (result.isNotEmpty) {
        add(SwitcherEvent.updateSwitcher(result));
      }
    });
  }

  Future<void> _periodicUpdateFromFb(
    _PeriodicUpdateFb event,
    Emitter<SwitcherState> emitter,
  ) async {
    Timer.periodic(const Duration(seconds: 10), (timer) async {
      var result = await _dataRepositoryFb.fetchData();
      if (result.isNotEmpty) {
        await _dataRepositoryDb.putData(result);
      }
    });
  }

  Future<void> _updateFromFb(
    _UpdateFromFbEvent event,
    Emitter<SwitcherState> emitter,
  ) async {
    var result = await _dataRepositoryFb.fetchData();
    if (result.isNotEmpty) {
      await _dataRepositoryDb.putData(result);
    }
  }
}
