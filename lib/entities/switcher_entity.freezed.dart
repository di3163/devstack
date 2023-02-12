// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switcher_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwitcherEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get switch1 => throw _privateConstructorUsedError;
  bool get switch2 => throw _privateConstructorUsedError;
  bool get switch3 => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitcherEntityCopyWith<SwitcherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitcherEntityCopyWith<$Res> {
  factory $SwitcherEntityCopyWith(
          SwitcherEntity value, $Res Function(SwitcherEntity) then) =
      _$SwitcherEntityCopyWithImpl<$Res, SwitcherEntity>;
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
class _$SwitcherEntityCopyWithImpl<$Res, $Val extends SwitcherEntity>
    implements $SwitcherEntityCopyWith<$Res> {
  _$SwitcherEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_SwitcherEntityCopyWith<$Res>
    implements $SwitcherEntityCopyWith<$Res> {
  factory _$$_SwitcherEntityCopyWith(
          _$_SwitcherEntity value, $Res Function(_$_SwitcherEntity) then) =
      __$$_SwitcherEntityCopyWithImpl<$Res>;
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
class __$$_SwitcherEntityCopyWithImpl<$Res>
    extends _$SwitcherEntityCopyWithImpl<$Res, _$_SwitcherEntity>
    implements _$$_SwitcherEntityCopyWith<$Res> {
  __$$_SwitcherEntityCopyWithImpl(
      _$_SwitcherEntity _value, $Res Function(_$_SwitcherEntity) _then)
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
    return _then(_$_SwitcherEntity(
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

class _$_SwitcherEntity extends _SwitcherEntity {
  const _$_SwitcherEntity(
      {required this.id,
      required this.name,
      required this.switch1,
      required this.switch2,
      required this.switch3,
      required this.order})
      : super._();

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
    return 'SwitcherEntity(id: $id, name: $name, switch1: $switch1, switch2: $switch2, switch3: $switch3, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitcherEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.switch1, switch1) || other.switch1 == switch1) &&
            (identical(other.switch2, switch2) || other.switch2 == switch2) &&
            (identical(other.switch3, switch3) || other.switch3 == switch3) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, switch1, switch2, switch3, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitcherEntityCopyWith<_$_SwitcherEntity> get copyWith =>
      __$$_SwitcherEntityCopyWithImpl<_$_SwitcherEntity>(this, _$identity);
}

abstract class _SwitcherEntity extends SwitcherEntity {
  const factory _SwitcherEntity(
      {required final String id,
      required final String name,
      required final bool switch1,
      required final bool switch2,
      required final bool switch3,
      required final int order}) = _$_SwitcherEntity;
  const _SwitcherEntity._() : super._();

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
  _$$_SwitcherEntityCopyWith<_$_SwitcherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
