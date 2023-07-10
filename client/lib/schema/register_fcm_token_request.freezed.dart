// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_fcm_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFcmTokenRequest _$RegisterFcmTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _RegisterFcmTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterFcmTokenRequest {
  @JsonKey(name: 'fcm_token')
  String get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFcmTokenRequestCopyWith<RegisterFcmTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFcmTokenRequestCopyWith<$Res> {
  factory $RegisterFcmTokenRequestCopyWith(RegisterFcmTokenRequest value,
          $Res Function(RegisterFcmTokenRequest) then) =
      _$RegisterFcmTokenRequestCopyWithImpl<$Res, RegisterFcmTokenRequest>;
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken});
}

/// @nodoc
class _$RegisterFcmTokenRequestCopyWithImpl<$Res,
        $Val extends RegisterFcmTokenRequest>
    implements $RegisterFcmTokenRequestCopyWith<$Res> {
  _$RegisterFcmTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterFcmTokenRequestCopyWith<$Res>
    implements $RegisterFcmTokenRequestCopyWith<$Res> {
  factory _$$_RegisterFcmTokenRequestCopyWith(_$_RegisterFcmTokenRequest value,
          $Res Function(_$_RegisterFcmTokenRequest) then) =
      __$$_RegisterFcmTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken});
}

/// @nodoc
class __$$_RegisterFcmTokenRequestCopyWithImpl<$Res>
    extends _$RegisterFcmTokenRequestCopyWithImpl<$Res,
        _$_RegisterFcmTokenRequest>
    implements _$$_RegisterFcmTokenRequestCopyWith<$Res> {
  __$$_RegisterFcmTokenRequestCopyWithImpl(_$_RegisterFcmTokenRequest _value,
      $Res Function(_$_RegisterFcmTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$_RegisterFcmTokenRequest(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFcmTokenRequest implements _RegisterFcmTokenRequest {
  const _$_RegisterFcmTokenRequest(
      {@JsonKey(name: 'fcm_token') required this.fcmToken});

  factory _$_RegisterFcmTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFcmTokenRequestFromJson(json);

  @override
  @JsonKey(name: 'fcm_token')
  final String fcmToken;

  @override
  String toString() {
    return 'RegisterFcmTokenRequest(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFcmTokenRequest &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFcmTokenRequestCopyWith<_$_RegisterFcmTokenRequest>
      get copyWith =>
          __$$_RegisterFcmTokenRequestCopyWithImpl<_$_RegisterFcmTokenRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFcmTokenRequestToJson(
      this,
    );
  }
}

abstract class _RegisterFcmTokenRequest implements RegisterFcmTokenRequest {
  const factory _RegisterFcmTokenRequest(
          {@JsonKey(name: 'fcm_token') required final String fcmToken}) =
      _$_RegisterFcmTokenRequest;

  factory _RegisterFcmTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RegisterFcmTokenRequest.fromJson;

  @override
  @JsonKey(name: 'fcm_token')
  String get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFcmTokenRequestCopyWith<_$_RegisterFcmTokenRequest>
      get copyWith => throw _privateConstructorUsedError;
}
