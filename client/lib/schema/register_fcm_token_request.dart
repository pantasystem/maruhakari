import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_fcm_token_request.freezed.dart';

part 'register_fcm_token_request.g.dart';

@freezed
class RegisterFcmTokenRequest with _$RegisterFcmTokenRequest {
  const factory RegisterFcmTokenRequest({
    @JsonKey(name: 'fcm_token') required String fcmToken,
}) = _RegisterFcmTokenRequest;

  factory RegisterFcmTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterFcmTokenRequestFromJson(json);
}