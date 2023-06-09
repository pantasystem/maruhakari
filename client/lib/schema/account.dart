import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

part 'account.g.dart';

@freezed
class CreateAccountRequest with _$CreateAccountRequest {
  const factory CreateAccountRequest({
    required String username,
    required String password,
  }) = _CreateAccountRequest;

  factory CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestFromJson(json);
}

@freezed
class LoginAccountRequest with _$LoginAccountRequest {
  const factory LoginAccountRequest({
    required String username,
    required String password,
  }) = _LoginAccountRequest;

  factory LoginAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginAccountRequestFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required String id,
    required String username,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class TokenWithAccount with _$TokenWithAccount {
  const factory TokenWithAccount(
      {required String token, required Account account}) = _TokenWithAccount;

  factory TokenWithAccount.fromJson(Map<String, dynamic> json) =>
      _$TokenWithAccountFromJson(json);
}
