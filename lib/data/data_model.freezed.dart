// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get switch1 => throw _privateConstructorUsedError;
  bool get switch2 => throw _privateConstructorUsedError;
  bool get switch3 => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool switch1,
      bool switch2,
      bool switch3,
      int order});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? switch1 = null,
    Object? switch2 = null,
    Object? switch3 = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: null == switch1
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch2: null == switch2
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch3: null == switch3
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$$_DataModelCopyWith(
          _$_DataModel value, $Res Function(_$_DataModel) then) =
      __$$_DataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool switch1,
      bool switch2,
      bool switch3,
      int order});
}

/// @nodoc
class __$$_DataModelCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$_DataModel>
    implements _$$_DataModelCopyWith<$Res> {
  __$$_DataModelCopyWithImpl(
      _$_DataModel _value, $Res Function(_$_DataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? switch1 = null,
    Object? switch2 = null,
    Object? switch3 = null,
    Object? order = null,
  }) {
    return _then(_$_DataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: null == switch1
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch2: null == switch2
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch3: null == switch3
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel extends _DataModel {
  _$_DataModel(
      {required this.id,
      required this.name,
      required this.switch1,
      required this.switch2,
      required this.switch3,
      required this.order})
      : super._();

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool switch1;
  @override
  final bool switch2;
  @override
  final bool switch3;
  @override
  final int order;

  @override
  String toString() {
    return 'DataModel(id: $id, name: $name, switch1: $switch1, switch2: $switch2, switch3: $switch3, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.switch1, switch1) || other.switch1 == switch1) &&
            (identical(other.switch2, switch2) || other.switch2 == switch2) &&
            (identical(other.switch3, switch3) || other.switch3 == switch3) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, switch1, switch2, switch3, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      __$$_DataModelCopyWithImpl<_$_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(
      this,
    );
  }
}

abstract class _DataModel extends DataModel {
  factory _DataModel(
      {required final String id,
      required final String name,
      required final bool switch1,
      required final bool switch2,
      required final bool switch3,
      required final int order}) = _$_DataModel;
  _DataModel._() : super._();

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get switch1;
  @override
  bool get switch2;
  @override
  bool get switch3;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModelDb _$DataModelDbFromJson(Map<String, dynamic> json) {
  return _DataModelDb.fromJson(json);
}

/// @nodoc
mixin _$DataModelDb {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get switch1 => throw _privateConstructorUsedError;
  int get switch2 => throw _privateConstructorUsedError;
  int get switch3 => throw _privateConstructorUsedError;
  int get ord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelDbCopyWith<DataModelDb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelDbCopyWith<$Res> {
  factory $DataModelDbCopyWith(
          DataModelDb value, $Res Function(DataModelDb) then) =
      _$DataModelDbCopyWithImpl<$Res, DataModelDb>;
  @useResult
  $Res call(
      {String id, String name, int switch1, int switch2, int switch3, int ord});
}

/// @nodoc
class _$DataModelDbCopyWithImpl<$Res, $Val extends DataModelDb>
    implements $DataModelDbCopyWith<$Res> {
  _$DataModelDbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? switch1 = null,
    Object? switch2 = null,
    Object? switch3 = null,
    Object? ord = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: null == switch1
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as int,
      switch2: null == switch2
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as int,
      switch3: null == switch3
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as int,
      ord: null == ord
          ? _value.ord
          : ord // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelDbCopyWith<$Res>
    implements $DataModelDbCopyWith<$Res> {
  factory _$$_DataModelDbCopyWith(
          _$_DataModelDb value, $Res Function(_$_DataModelDb) then) =
      __$$_DataModelDbCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, int switch1, int switch2, int switch3, int ord});
}

/// @nodoc
class __$$_DataModelDbCopyWithImpl<$Res>
    extends _$DataModelDbCopyWithImpl<$Res, _$_DataModelDb>
    implements _$$_DataModelDbCopyWith<$Res> {
  __$$_DataModelDbCopyWithImpl(
      _$_DataModelDb _value, $Res Function(_$_DataModelDb) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? switch1 = null,
    Object? switch2 = null,
    Object? switch3 = null,
    Object? ord = null,
  }) {
    return _then(_$_DataModelDb(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: null == switch1
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as int,
      switch2: null == switch2
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as int,
      switch3: null == switch3
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as int,
      ord: null == ord
          ? _value.ord
          : ord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModelDb extends _DataModelDb {
  _$_DataModelDb(
      {required this.id,
      required this.name,
      required this.switch1,
      required this.switch2,
      required this.switch3,
      required this.ord})
      : super._();

  factory _$_DataModelDb.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelDbFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int switch1;
  @override
  final int switch2;
  @override
  final int switch3;
  @override
  final int ord;

  @override
  String toString() {
    return 'DataModelDb(id: $id, name: $name, switch1: $switch1, switch2: $switch2, switch3: $switch3, ord: $ord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModelDb &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.switch1, switch1) || other.switch1 == switch1) &&
            (identical(other.switch2, switch2) || other.switch2 == switch2) &&
            (identical(other.switch3, switch3) || other.switch3 == switch3) &&
            (identical(other.ord, ord) || other.ord == ord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, switch1, switch2, switch3, ord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelDbCopyWith<_$_DataModelDb> get copyWith =>
      __$$_DataModelDbCopyWithImpl<_$_DataModelDb>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelDbToJson(
      this,
    );
  }
}

abstract class _DataModelDb extends DataModelDb {
  factory _DataModelDb(
      {required final String id,
      required final String name,
      required final int switch1,
      required final int switch2,
      required final int switch3,
      required final int ord}) = _$_DataModelDb;
  _DataModelDb._() : super._();

  factory _DataModelDb.fromJson(Map<String, dynamic> json) =
      _$_DataModelDb.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get switch1;
  @override
  int get switch2;
  @override
  int get switch3;
  @override
  int get ord;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelDbCopyWith<_$_DataModelDb> get copyWith =>
      throw _privateConstructorUsedError;
}
