// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContainerTemplate _$ContainerTemplateFromJson(Map<String, dynamic> json) {
  return _ContainerTemplate.fromJson(json);
}

/// @nodoc
mixin _$ContainerTemplate {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get containerWeightGram => throw _privateConstructorUsedError;
  double get containerMaxWeightGram => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContainerTemplateCopyWith<ContainerTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerTemplateCopyWith<$Res> {
  factory $ContainerTemplateCopyWith(
          ContainerTemplate value, $Res Function(ContainerTemplate) then) =
      _$ContainerTemplateCopyWithImpl<$Res, ContainerTemplate>;
  @useResult
  $Res call(
      {String id,
      String label,
      String imageUrl,
      double containerWeightGram,
      double containerMaxWeightGram});
}

/// @nodoc
class _$ContainerTemplateCopyWithImpl<$Res, $Val extends ContainerTemplate>
    implements $ContainerTemplateCopyWith<$Res> {
  _$ContainerTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? imageUrl = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContainerTemplateCopyWith<$Res>
    implements $ContainerTemplateCopyWith<$Res> {
  factory _$$_ContainerTemplateCopyWith(_$_ContainerTemplate value,
          $Res Function(_$_ContainerTemplate) then) =
      __$$_ContainerTemplateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      String imageUrl,
      double containerWeightGram,
      double containerMaxWeightGram});
}

/// @nodoc
class __$$_ContainerTemplateCopyWithImpl<$Res>
    extends _$ContainerTemplateCopyWithImpl<$Res, _$_ContainerTemplate>
    implements _$$_ContainerTemplateCopyWith<$Res> {
  __$$_ContainerTemplateCopyWithImpl(
      _$_ContainerTemplate _value, $Res Function(_$_ContainerTemplate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? imageUrl = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
  }) {
    return _then(_$_ContainerTemplate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContainerTemplate implements _ContainerTemplate {
  const _$_ContainerTemplate(
      {required this.id,
      required this.label,
      required this.imageUrl,
      required this.containerWeightGram,
      required this.containerMaxWeightGram});

  factory _$_ContainerTemplate.fromJson(Map<String, dynamic> json) =>
      _$$_ContainerTemplateFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String imageUrl;
  @override
  final double containerWeightGram;
  @override
  final double containerMaxWeightGram;

  @override
  String toString() {
    return 'ContainerTemplate(id: $id, label: $label, imageUrl: $imageUrl, containerWeightGram: $containerWeightGram, containerMaxWeightGram: $containerMaxWeightGram)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContainerTemplate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.containerWeightGram, containerWeightGram) ||
                other.containerWeightGram == containerWeightGram) &&
            (identical(other.containerMaxWeightGram, containerMaxWeightGram) ||
                other.containerMaxWeightGram == containerMaxWeightGram));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, imageUrl,
      containerWeightGram, containerMaxWeightGram);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContainerTemplateCopyWith<_$_ContainerTemplate> get copyWith =>
      __$$_ContainerTemplateCopyWithImpl<_$_ContainerTemplate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContainerTemplateToJson(
      this,
    );
  }
}

abstract class _ContainerTemplate implements ContainerTemplate {
  const factory _ContainerTemplate(
      {required final String id,
      required final String label,
      required final String imageUrl,
      required final double containerWeightGram,
      required final double containerMaxWeightGram}) = _$_ContainerTemplate;

  factory _ContainerTemplate.fromJson(Map<String, dynamic> json) =
      _$_ContainerTemplate.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get imageUrl;
  @override
  double get containerWeightGram;
  @override
  double get containerMaxWeightGram;
  @override
  @JsonKey(ignore: true)
  _$$_ContainerTemplateCopyWith<_$_ContainerTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}
