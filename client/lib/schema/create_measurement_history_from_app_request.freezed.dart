// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_measurement_history_from_app_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMeasurementHistoryFromAppRequest
    _$CreateMeasurementHistoryFromAppRequestFromJson(
        Map<String, dynamic> json) {
  return _CreateMeasurementHistoryFromAppRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateMeasurementHistoryFromAppRequest {
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "nfc_uid")
  String get nfcUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMeasurementHistoryFromAppRequestCopyWith<
          CreateMeasurementHistoryFromAppRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMeasurementHistoryFromAppRequestCopyWith<$Res> {
  factory $CreateMeasurementHistoryFromAppRequestCopyWith(
          CreateMeasurementHistoryFromAppRequest value,
          $Res Function(CreateMeasurementHistoryFromAppRequest) then) =
      _$CreateMeasurementHistoryFromAppRequestCopyWithImpl<$Res,
          CreateMeasurementHistoryFromAppRequest>;
  @useResult
  $Res call({double weight, @JsonKey(name: "nfc_uid") String nfcUid});
}

/// @nodoc
class _$CreateMeasurementHistoryFromAppRequestCopyWithImpl<$Res,
        $Val extends CreateMeasurementHistoryFromAppRequest>
    implements $CreateMeasurementHistoryFromAppRequestCopyWith<$Res> {
  _$CreateMeasurementHistoryFromAppRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? nfcUid = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateMeasurementHistoryFromAppRequestCopyWith<$Res>
    implements $CreateMeasurementHistoryFromAppRequestCopyWith<$Res> {
  factory _$$_CreateMeasurementHistoryFromAppRequestCopyWith(
          _$_CreateMeasurementHistoryFromAppRequest value,
          $Res Function(_$_CreateMeasurementHistoryFromAppRequest) then) =
      __$$_CreateMeasurementHistoryFromAppRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, @JsonKey(name: "nfc_uid") String nfcUid});
}

/// @nodoc
class __$$_CreateMeasurementHistoryFromAppRequestCopyWithImpl<$Res>
    extends _$CreateMeasurementHistoryFromAppRequestCopyWithImpl<$Res,
        _$_CreateMeasurementHistoryFromAppRequest>
    implements _$$_CreateMeasurementHistoryFromAppRequestCopyWith<$Res> {
  __$$_CreateMeasurementHistoryFromAppRequestCopyWithImpl(
      _$_CreateMeasurementHistoryFromAppRequest _value,
      $Res Function(_$_CreateMeasurementHistoryFromAppRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? nfcUid = null,
  }) {
    return _then(_$_CreateMeasurementHistoryFromAppRequest(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateMeasurementHistoryFromAppRequest
    implements _CreateMeasurementHistoryFromAppRequest {
  const _$_CreateMeasurementHistoryFromAppRequest(
      {required this.weight, @JsonKey(name: "nfc_uid") required this.nfcUid});

  factory _$_CreateMeasurementHistoryFromAppRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateMeasurementHistoryFromAppRequestFromJson(json);

  @override
  final double weight;
  @override
  @JsonKey(name: "nfc_uid")
  final String nfcUid;

  @override
  String toString() {
    return 'CreateMeasurementHistoryFromAppRequest(weight: $weight, nfcUid: $nfcUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMeasurementHistoryFromAppRequest &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.nfcUid, nfcUid) || other.nfcUid == nfcUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weight, nfcUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateMeasurementHistoryFromAppRequestCopyWith<
          _$_CreateMeasurementHistoryFromAppRequest>
      get copyWith => __$$_CreateMeasurementHistoryFromAppRequestCopyWithImpl<
          _$_CreateMeasurementHistoryFromAppRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateMeasurementHistoryFromAppRequestToJson(
      this,
    );
  }
}

abstract class _CreateMeasurementHistoryFromAppRequest
    implements CreateMeasurementHistoryFromAppRequest {
  const factory _CreateMeasurementHistoryFromAppRequest(
          {required final double weight,
          @JsonKey(name: "nfc_uid") required final String nfcUid}) =
      _$_CreateMeasurementHistoryFromAppRequest;

  factory _CreateMeasurementHistoryFromAppRequest.fromJson(
          Map<String, dynamic> json) =
      _$_CreateMeasurementHistoryFromAppRequest.fromJson;

  @override
  double get weight;
  @override
  @JsonKey(name: "nfc_uid")
  String get nfcUid;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMeasurementHistoryFromAppRequestCopyWith<
          _$_CreateMeasurementHistoryFromAppRequest>
      get copyWith => throw _privateConstructorUsedError;
}
