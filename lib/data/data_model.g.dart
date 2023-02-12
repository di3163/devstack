// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      switch1: json['switch1'] as bool,
      switch2: json['switch2'] as bool,
      switch3: json['switch3'] as bool,
      order: json['order'] as int,
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'switch1': instance.switch1,
      'switch2': instance.switch2,
      'switch3': instance.switch3,
      'order': instance.order,
    };

_$_DataModelDb _$$_DataModelDbFromJson(Map<String, dynamic> json) =>
    _$_DataModelDb(
      id: json['id'] as String,
      name: json['name'] as String,
      switch1: json['switch1'] as int,
      switch2: json['switch2'] as int,
      switch3: json['switch3'] as int,
      ord: json['ord'] as int,
    );

Map<String, dynamic> _$$_DataModelDbToJson(_$_DataModelDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'switch1': instance.switch1,
      'switch2': instance.switch2,
      'switch3': instance.switch3,
      'ord': instance.ord,
    };
