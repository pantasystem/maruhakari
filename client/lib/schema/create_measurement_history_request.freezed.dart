// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_measurement_history_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMeasurementHistoryRequest _$CreateMeasurementHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateMeasurementHistoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateMeasurementHistoryRequest {
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "record_at")
  DateTime? get recordAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMeasurementHistoryRequestCopyWith<CreateMeasurementHistoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMeasurementHistoryRequestCopyWith<$Res> {
  factory $CreateMeasurementHistoryRequestCopyWith(
          CreateMeasurementHistoryRequest value,
          $Res Function(CreateMeasurementHistoryRequest) then) =
      _$CreateMeasurementHistoryRequestCopyWithImpl<$Res,
          CreateMeasurementHistoryRequest>;
  @useResult
  $Res call({double weight, @JsonKey(name: "record_at") DateTime? recordAt});
}

/// @nodoc
class _$CreateMeasurementHistoryRequestCopyWithImpl<$Res,
        $Val extends CreateMeasurementHistoryRequest>
    implements $CreateMeasurementHistoryRequestCopyWith<$Res> {
  _$CreateMeasurementHistoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? recordAt = freezed,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      recordAt: freezed == recordAt
          ? _value.recordAt
          : recordAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateMeasurementHistoryRequestCopyWith<$Res>
    implements $CreateMeasurementHistoryRequestCopyWith<$Res> {
  factory _$$_CreateMeasurementHistoryRequestCopyWith(
          _$_CreateMeasurementHistoryRequest value,
          $Res Function(_$_CreateMeasurementHistoryRequest) then) =
      __$$_CreateMeasurementHistoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, @JsonKey(name: "record_at") DateTime? recordAt});
}

/// @nodoc
class __$$_CreateMeasurementHistoryRequestCopyWithImpl<$Res>
    extends _$CreateMeasurementHistoryRequestCopyWithImpl<$Res,
        _$_CreateMeasurementHistoryRequest>
    implements _$$_CreateMeasurementHistoryRequestCopyWith<$Res> {
  __$$_CreateMeasurementHistoryRequestCopyWithImpl(
      _$_CreateMeasurementHistoryRequest _value,
      $Res Function(_$_CreateMeasurementHistoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? recordAt = freezed,
  }) {
    return _then(_$_CreateMeasurementHistoryRequest(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      recordAt: freezed == recordAt
          ? _value.recordAt
          : recordAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateMeasurementHistoryRequest
    implements _CreateMeasurementHistoryRequest {
  const _$_CreateMeasurementHistoryRequest(
      {required this.weight, @JsonKey(name: "record_at") this.recordAt});

  factory _$_CreateMeasurementHistoryRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateMeasurementHistoryRequestFromJson(json);

  @override
  final double weight;
  @override
  @JsonKey(name: "record_at")
  final DateTime? recordAt;

  @override
  String toString() {
    return 'CreateMeasurementHistoryRequest(weight: $weight, recordAt: $recordAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMeasurementHistoryRequest &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.recordAt, recordAt) ||
                other.recordAt == recordAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weight, recordAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateMeasurementHistoryRequestCopyWith<
          _$_CreateMeasurementHistoryRequest>
      get copyWith => __$$_CreateMeasurementHistoryRequestCopyWithImpl<
          _$_CreateMeasurementHistoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateMeasurementHistoryRequestToJson(
      this,
    );
  }
}

abstract class _CreateMeasurementHistoryRequest
    implements CreateMeasurementHistoryRequest {
  const factory _CreateMeasurementHistoryRequest(
          {required final double weight,
          @JsonKey(name: "record_at") final DateTime? recordAt}) =
      _$_CreateMeasurementHistoryRequest;

  factory _CreateMeasurementHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateMeasurementHistoryRequest.fromJson;

  @override
  double get weight;
  @override
  @JsonKey(name: "record_at")
  DateTime? get recordAt;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMeasurementHistoryRequestCopyWith<
          _$_CreateMeasurementHistoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}
