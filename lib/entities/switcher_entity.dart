import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:devstack/data/data_model.dart';

part 'switcher_entity.freezed.dart';

@freezed
class SwitcherEntity with _$SwitcherEntity {
  const SwitcherEntity._();

  const factory SwitcherEntity({
    required String id,
    required String name,
    required bool switch1,
    required bool switch2,
    required bool switch3,
    required int order,
  }) = _SwitcherEntity;

  factory SwitcherEntity.fromDataModel(DataModel model) => SwitcherEntity(
      id: model.id,
      name: model.name,
      switch1: model.switch1,
      switch2: model.switch2,
      switch3: model.switch3,
      order: model.order);

  factory SwitcherEntity.fromDataModelDb(DataModelDb model) => SwitcherEntity(
      id: model.id,
      name: model.name,
      switch1: model.switch1 == 1,
      switch2: model.switch2 == 1,
      switch3: model.switch3 == 1,
      order: model.ord);
}
