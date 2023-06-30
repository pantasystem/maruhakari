// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasurementHistory _$MeasurementHistoryFromJson(Map<String, dynamic> json) {
  return _MeasurementHistory.fromJson(json);
}

/// @nodoc
mixin _$MeasurementHistory {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "food_id")
  String get foodId => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  Device? get device => throw _privateConstructorUsedError;
  Food? get food => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementHistoryCopyWith<MeasurementHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementHistoryCopyWith<$Res> {
  factory $MeasurementHistoryCopyWith(
          MeasurementHistory value, $Res Function(MeasurementHistory) then) =
      _$MeasurementHistoryCopyWithImpl<$Res, MeasurementHistory>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "food_id") String foodId,
      double weight,
      String? deviceId,
      Device? device,
      Food? food,
      DateTime? createdAt});

  $DeviceCopyWith<$Res>? get device;
  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class _$MeasurementHistoryCopyWithImpl<$Res, $Val extends MeasurementHistory>
    implements $MeasurementHistoryCopyWith<$Res> {
  _$MeasurementHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodId = null,
    Object? weight = null,
    Object? deviceId = freezed,
    Object? device = freezed,
    Object? food = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeasurementHistoryCopyWith<$Res>
    implements $MeasurementHistoryCopyWith<$Res> {
  factory _$$_MeasurementHistoryCopyWith(_$_MeasurementHistory value,
          $Res Function(_$_MeasurementHistory) then) =
      __$$_MeasurementHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "food_id") String foodId,
      double weight,
      String? deviceId,
      Device? device,
      Food? food,
      DateTime? createdAt});

  @override
  $DeviceCopyWith<$Res>? get device;
  @override
  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class __$$_MeasurementHistoryCopyWithImpl<$Res>
    extends _$MeasurementHistoryCopyWithImpl<$Res, _$_MeasurementHistory>
    implements _$$_MeasurementHistoryCopyWith<$Res> {
  __$$_MeasurementHistoryCopyWithImpl(
      _$_MeasurementHistory _value, $Res Function(_$_MeasurementHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodId = null,
    Object? weight = null,
    Object? deviceId = freezed,
    Object? device = freezed,
    Object? food = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_MeasurementHistory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementHistory implements _MeasurementHistory {
  const _$_MeasurementHistory(
      {required this.id,
      @JsonKey(name: "food_id") required this.foodId,
      required this.weight,
      this.deviceId,
      this.device,
      this.food,
      this.createdAt});

  factory _$_MeasurementHistory.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementHistoryFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "food_id")
  final String foodId;
  @override
  final double weight;
  @override
  final String? deviceId;
  @override
  final Device? device;
  @override
  final Food? food;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MeasurementHistory(id: $id, foodId: $foodId, weight: $weight, deviceId: $deviceId, device: $device, food: $food, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, foodId, weight, deviceId, device, food, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementHistoryCopyWith<_$_MeasurementHistory> get copyWith =>
      __$$_MeasurementHistoryCopyWithImpl<_$_MeasurementHistory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementHistoryToJson(
      this,
    );
  }
}

abstract class _MeasurementHistory implements MeasurementHistory {
  const factory _MeasurementHistory(
      {required final int id,
      @JsonKey(name: "food_id") required final String foodId,
      required final double weight,
      final String? deviceId,
      final Device? device,
      final Food? food,
      final DateTime? createdAt}) = _$_MeasurementHistory;

  factory _MeasurementHistory.fromJson(Map<String, dynamic> json) =
      _$_MeasurementHistory.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "food_id")
  String get foodId;
  @override
  double get weight;
  @override
  String? get deviceId;
  @override
  Device? get device;
  @override
  Food? get food;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementHistoryCopyWith<_$_MeasurementHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordHistoryRequest _$RecordHistoryRequestFromJson(Map<String, dynamic> json) {
  return _RecordHistoryRequest.fromJson(json);
}

/// @nodoc
mixin _$RecordHistoryRequest {
  @JsonKey(name: 'device_token')
  String get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'nfc_uid')
  String get nfcUid => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordHistoryRequestCopyWith<RecordHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordHistoryRequestCopyWith<$Res> {
  factory $RecordHistoryRequestCopyWith(RecordHistoryRequest value,
          $Res Function(RecordHistoryRequest) then) =
      _$RecordHistoryRequestCopyWithImpl<$Res, RecordHistoryRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_token') String deviceToken,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      double weight});
}

/// @nodoc
class _$RecordHistoryRequestCopyWithImpl<$Res,
        $Val extends RecordHistoryRequest>
    implements $RecordHistoryRequestCopyWith<$Res> {
  _$RecordHistoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
    Object? nfcUid = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordHistoryRequestCopyWith<$Res>
    implements $RecordHistoryRequestCopyWith<$Res> {
  factory _$$_RecordHistoryRequestCopyWith(_$_RecordHistoryRequest value,
          $Res Function(_$_RecordHistoryRequest) then) =
      __$$_RecordHistoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_token') String deviceToken,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      double weight});
}

/// @nodoc
class __$$_RecordHistoryRequestCopyWithImpl<$Res>
    extends _$RecordHistoryRequestCopyWithImpl<$Res, _$_RecordHistoryRequest>
    implements _$$_RecordHistoryRequestCopyWith<$Res> {
  __$$_RecordHistoryRequestCopyWithImpl(_$_RecordHistoryRequest _value,
      $Res Function(_$_RecordHistoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
    Object? nfcUid = null,
    Object? weight = null,
  }) {
    return _then(_$_RecordHistoryRequest(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordHistoryRequest implements _RecordHistoryRequest {
  const _$_RecordHistoryRequest(
      {@JsonKey(name: 'device_token') required this.deviceToken,
      @JsonKey(name: 'nfc_uid') required this.nfcUid,
      required this.weight});

  factory _$_RecordHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RecordHistoryRequestFromJson(json);

  @override
  @JsonKey(name: 'device_token')
  final String deviceToken;
  @override
  @JsonKey(name: 'nfc_uid')
  final String nfcUid;
  @override
  final double weight;

  @override
  String toString() {
    return 'RecordHistoryRequest(deviceToken: $deviceToken, nfcUid: $nfcUid, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordHistoryRequest &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.nfcUid, nfcUid) || other.nfcUid == nfcUid) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceToken, nfcUid, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordHistoryRequestCopyWith<_$_RecordHistoryRequest> get copyWith =>
      __$$_RecordHistoryRequestCopyWithImpl<_$_RecordHistoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordHistoryRequestToJson(
      this,
    );
  }
}

abstract class _RecordHistoryRequest implements RecordHistoryRequest {
  const factory _RecordHistoryRequest(
      {@JsonKey(name: 'device_token') required final String deviceToken,
      @JsonKey(name: 'nfc_uid') required final String nfcUid,
      required final double weight}) = _$_RecordHistoryRequest;

  factory _RecordHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$_RecordHistoryRequest.fromJson;

  @override
  @JsonKey(name: 'device_token')
  String get deviceToken;
  @override
  @JsonKey(name: 'nfc_uid')
  String get nfcUid;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$_RecordHistoryRequestCopyWith<_$_RecordHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
