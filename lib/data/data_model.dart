import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:devstack/entities/switcher_entity.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const DataModel._();

  factory DataModel({
    required String id,
    required String name,
    required bool switch1,
    required bool switch2,
    required bool switch3,
    required int order,
  }) = _DataModel;

  factory DataModel.fromEntity(SwitcherEntity entity) => DataModel(
        id: entity.id,
        name: entity.name,
        switch1: entity.switch1,
        switch2: entity.switch2,
        switch3: entity.switch3,
        order: entity.order,
      );

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class DataModelDb with _$DataModelDb {
  const DataModelDb._();

  factory DataModelDb({
    required String id,
    required String name,
    required int switch1,
    required int switch2,
    required int switch3,
    required int ord,
  }) = _DataModelDb;

  factory DataModelDb.fromDataModel(DataModel dataModel) => DataModelDb(
        id: dataModel.id,
        name: dataModel.name,
        switch1: dataModel.switch1 ? 1 : 0,
        switch2: dataModel.switch2 ? 1 : 0,
        switch3: dataModel.switch3 ? 1 : 0,
        ord: dataModel.order,
      );

  factory DataModelDb.fromEntity(SwitcherEntity entity) => DataModelDb(
        id: entity.id,
        name: entity.name,
        switch1: entity.switch1 ? 1 : 0,
        switch2: entity.switch2 ? 1 : 0,
        switch3: entity.switch3 ? 1 : 0,
        ord: entity.order,
      );

  factory DataModelDb.fromJson(Map<String, dynamic> json) =>
      _$DataModelDbFromJson(json);
}
