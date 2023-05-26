// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iot_connection_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IotConnectionInfo _$IotConnectionInfoFromJson(Map<String, dynamic> json) {
  return _IotConnectionInfo.fromJson(json);
}

/// @nodoc
mixin _$IotConnectionInfo {
  @JsonKey(name: 's')
  String get ssid => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IotConnectionInfoCopyWith<IotConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IotConnectionInfoCopyWith<$Res> {
  factory $IotConnectionInfoCopyWith(
          IotConnectionInfo value, $Res Function(IotConnectionInfo) then) =
      _$IotConnectionInfoCopyWithImpl<$Res, IotConnectionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 's') String ssid,
      @JsonKey(name: 'p') String password,
      @JsonKey(name: 't') String token});
}

/// @nodoc
class _$IotConnectionInfoCopyWithImpl<$Res, $Val extends IotConnectionInfo>
    implements $IotConnectionInfoCopyWith<$Res> {
  _$IotConnectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? password = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IotConnectionInfoCopyWith<$Res>
    implements $IotConnectionInfoCopyWith<$Res> {
  factory _$$_IotConnectionInfoCopyWith(_$_IotConnectionInfo value,
          $Res Function(_$_IotConnectionInfo) then) =
      __$$_IotConnectionInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 's') String ssid,
      @JsonKey(name: 'p') String password,
      @JsonKey(name: 't') String token});
}

/// @nodoc
class __$$_IotConnectionInfoCopyWithImpl<$Res>
    extends _$IotConnectionInfoCopyWithImpl<$Res, _$_IotConnectionInfo>
    implements _$$_IotConnectionInfoCopyWith<$Res> {
  __$$_IotConnectionInfoCopyWithImpl(
      _$_IotConnectionInfo _value, $Res Function(_$_IotConnectionInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? password = null,
    Object? token = null,
  }) {
    return _then(_$_IotConnectionInfo(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IotConnectionInfo implements _IotConnectionInfo {
  const _$_IotConnectionInfo(
      {@JsonKey(name: 's') required this.ssid,
      @JsonKey(name: 'p') required this.password,
      @JsonKey(name: 't') required this.token});

  factory _$_IotConnectionInfo.fromJson(Map<String, dynamic> json) =>
      _$$_IotConnectionInfoFromJson(json);

  @override
  @JsonKey(name: 's')
  final String ssid;
  @override
  @JsonKey(name: 'p')
  final String password;
  @override
  @JsonKey(name: 't')
  final String token;

  @override
  String toString() {
    return 'IotConnectionInfo(ssid: $ssid, password: $password, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IotConnectionInfo &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ssid, password, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IotConnectionInfoCopyWith<_$_IotConnectionInfo> get copyWith =>
      __$$_IotConnectionInfoCopyWithImpl<_$_IotConnectionInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IotConnectionInfoToJson(
      this,
    );
  }
}

abstract class _IotConnectionInfo implements IotConnectionInfo {
  const factory _IotConnectionInfo(
      {@JsonKey(name: 's') required final String ssid,
      @JsonKey(name: 'p') required final String password,
      @JsonKey(name: 't') required final String token}) = _$_IotConnectionInfo;

  factory _IotConnectionInfo.fromJson(Map<String, dynamic> json) =
      _$_IotConnectionInfo.fromJson;

  @override
  @JsonKey(name: 's')
  String get ssid;
  @override
  @JsonKey(name: 'p')
  String get password;
  @override
  @JsonKey(name: 't')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_IotConnectionInfoCopyWith<_$_IotConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
