// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodTemplate _$FoodTemplateFromJson(Map<String, dynamic> json) {
  return _FoodTemplate.fromJson(json);
}

/// @nodoc
mixin _$FoodTemplate {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'gram_per_miller')
  double? get gramPerMiller => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodTemplateCopyWith<FoodTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodTemplateCopyWith<$Res> {
  factory $FoodTemplateCopyWith(
          FoodTemplate value, $Res Function(FoodTemplate) then) =
      _$FoodTemplateCopyWithImpl<$Res, FoodTemplate>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'gram_per_miller')
          double? gramPerMiller,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime updatedAt});
}

/// @nodoc
class _$FoodTemplateCopyWithImpl<$Res, $Val extends FoodTemplate>
    implements $FoodTemplateCopyWith<$Res> {
  _$FoodTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gramPerMiller = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      gramPerMiller: freezed == gramPerMiller
          ? _value.gramPerMiller
          : gramPerMiller // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodTemplateCopyWith<$Res>
    implements $FoodTemplateCopyWith<$Res> {
  factory _$$_FoodTemplateCopyWith(
          _$_FoodTemplate value, $Res Function(_$_FoodTemplate) then) =
      __$$_FoodTemplateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'gram_per_miller')
          double? gramPerMiller,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime updatedAt});
}

/// @nodoc
class __$$_FoodTemplateCopyWithImpl<$Res>
    extends _$FoodTemplateCopyWithImpl<$Res, _$_FoodTemplate>
    implements _$$_FoodTemplateCopyWith<$Res> {
  __$$_FoodTemplateCopyWithImpl(
      _$_FoodTemplate _value, $Res Function(_$_FoodTemplate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gramPerMiller = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_FoodTemplate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gramPerMiller: freezed == gramPerMiller
          ? _value.gramPerMiller
          : gramPerMiller // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodTemplate implements _FoodTemplate {
  const _$_FoodTemplate(
      {required this.id,
      required this.name,
      @JsonKey(name: 'gram_per_miller')
          this.gramPerMiller,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          required this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          required this.updatedAt});

  factory _$_FoodTemplate.fromJson(Map<String, dynamic> json) =>
      _$$_FoodTemplateFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'gram_per_miller')
  final double? gramPerMiller;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FoodTemplate(id: $id, name: $name, gramPerMiller: $gramPerMiller, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodTemplate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gramPerMiller, gramPerMiller) ||
                other.gramPerMiller == gramPerMiller) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, gramPerMiller, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodTemplateCopyWith<_$_FoodTemplate> get copyWith =>
      __$$_FoodTemplateCopyWithImpl<_$_FoodTemplate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodTemplateToJson(
      this,
    );
  }
}

abstract class _FoodTemplate implements FoodTemplate {
  const factory _FoodTemplate(
      {required final String id,
      required final String name,
      @JsonKey(name: 'gram_per_miller')
          final double? gramPerMiller,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          required final DateTime updatedAt}) = _$_FoodTemplate;

  factory _FoodTemplate.fromJson(Map<String, dynamic> json) =
      _$_FoodTemplate.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'gram_per_miller')
  double? get gramPerMiller;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FoodTemplateCopyWith<_$_FoodTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}
