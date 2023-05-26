// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac_address')
  String get macAddress => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  String get accountId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'mac_address')
          String macAddress,
      String token,
      @JsonKey(name: 'account_id')
          String accountId,
      String? label,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime updatedAt});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? macAddress = null,
    Object? token = null,
    Object? accountId = null,
    Object? label = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$_DeviceCopyWith(_$_Device value, $Res Function(_$_Device) then) =
      __$$_DeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'mac_address')
          String macAddress,
      String token,
      @JsonKey(name: 'account_id')
          String accountId,
      String? label,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime updatedAt});
}

/// @nodoc
class __$$_DeviceCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$_Device>
    implements _$$_DeviceCopyWith<$Res> {
  __$$_DeviceCopyWithImpl(_$_Device _value, $Res Function(_$_Device) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? macAddress = null,
    Object? token = null,
    Object? accountId = null,
    Object? label = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Device(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Device implements _Device {
  const _$_Device(
      {required this.id,
      @JsonKey(name: 'mac_address')
          required this.macAddress,
      required this.token,
      @JsonKey(name: 'account_id')
          required this.accountId,
      this.label,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          required this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          required this.updatedAt});

  factory _$_Device.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'mac_address')
  final String macAddress;
  @override
  final String token;
  @override
  @JsonKey(name: 'account_id')
  final String accountId;
  @override
  final String? label;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Device(id: $id, macAddress: $macAddress, token: $token, accountId: $accountId, label: $label, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Device &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, macAddress, token, accountId,
      label, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      __$$_DeviceCopyWithImpl<_$_Device>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  const factory _Device(
      {required final String id,
      @JsonKey(name: 'mac_address')
          required final String macAddress,
      required final String token,
      @JsonKey(name: 'account_id')
          required final String accountId,
      final String? label,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          required final DateTime updatedAt}) = _$_Device;

  factory _Device.fromJson(Map<String, dynamic> json) = _$_Device.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'mac_address')
  String get macAddress;
  @override
  String get token;
  @override
  @JsonKey(name: 'account_id')
  String get accountId;
  @override
  String? get label;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveDeviceRequest _$SaveDeviceRequestFromJson(Map<String, dynamic> json) {
  return _SaveDeviceRequest.fromJson(json);
}

/// @nodoc
mixin _$SaveDeviceRequest {
  @JsonKey(name: 'mac_address')
  String get macAddress => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveDeviceRequestCopyWith<SaveDeviceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDeviceRequestCopyWith<$Res> {
  factory $SaveDeviceRequestCopyWith(
          SaveDeviceRequest value, $Res Function(SaveDeviceRequest) then) =
      _$SaveDeviceRequestCopyWithImpl<$Res, SaveDeviceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_address') String macAddress,
      String token,
      String? label});
}

/// @nodoc
class _$SaveDeviceRequestCopyWithImpl<$Res, $Val extends SaveDeviceRequest>
    implements $SaveDeviceRequestCopyWith<$Res> {
  _$SaveDeviceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
    Object? token = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveDeviceRequestCopyWith<$Res>
    implements $SaveDeviceRequestCopyWith<$Res> {
  factory _$$_SaveDeviceRequestCopyWith(_$_SaveDeviceRequest value,
          $Res Function(_$_SaveDeviceRequest) then) =
      __$$_SaveDeviceRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_address') String macAddress,
      String token,
      String? label});
}

/// @nodoc
class __$$_SaveDeviceRequestCopyWithImpl<$Res>
    extends _$SaveDeviceRequestCopyWithImpl<$Res, _$_SaveDeviceRequest>
    implements _$$_SaveDeviceRequestCopyWith<$Res> {
  __$$_SaveDeviceRequestCopyWithImpl(
      _$_SaveDeviceRequest _value, $Res Function(_$_SaveDeviceRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
    Object? token = null,
    Object? label = freezed,
  }) {
    return _then(_$_SaveDeviceRequest(
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveDeviceRequest implements _SaveDeviceRequest {
  const _$_SaveDeviceRequest(
      {@JsonKey(name: 'mac_address') required this.macAddress,
      required this.token,
      this.label});

  factory _$_SaveDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SaveDeviceRequestFromJson(json);

  @override
  @JsonKey(name: 'mac_address')
  final String macAddress;
  @override
  final String token;
  @override
  final String? label;

  @override
  String toString() {
    return 'SaveDeviceRequest(macAddress: $macAddress, token: $token, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveDeviceRequest &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, macAddress, token, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveDeviceRequestCopyWith<_$_SaveDeviceRequest> get copyWith =>
      __$$_SaveDeviceRequestCopyWithImpl<_$_SaveDeviceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveDeviceRequestToJson(
      this,
    );
  }
}

abstract class _SaveDeviceRequest implements SaveDeviceRequest {
  const factory _SaveDeviceRequest(
      {@JsonKey(name: 'mac_address') required final String macAddress,
      required final String token,
      final String? label}) = _$_SaveDeviceRequest;

  factory _SaveDeviceRequest.fromJson(Map<String, dynamic> json) =
      _$_SaveDeviceRequest.fromJson;

  @override
  @JsonKey(name: 'mac_address')
  String get macAddress;
  @override
  String get token;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_SaveDeviceRequestCopyWith<_$_SaveDeviceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
