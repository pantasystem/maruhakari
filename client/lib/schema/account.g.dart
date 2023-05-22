// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountRequest _$$_CreateAccountRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_CreateAccountRequestToJson(
        _$_CreateAccountRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_LoginAccountRequest _$$_LoginAccountRequestFromJson(
        Map<String, dynamic> json) =>
    _$_LoginAccountRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginAccountRequestToJson(
        _$_LoginAccountRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as String,
      username: json['username'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$_TokenWithAccount _$$_TokenWithAccountFromJson(Map<String, dynamic> json) =>
    _$_TokenWithAccount(
      token: json['token'] as String,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenWithAccountToJson(_$_TokenWithAccount instance) =>
    <String, dynamic>{
      'token': instance.token,
      'account': instance.account,
    };
