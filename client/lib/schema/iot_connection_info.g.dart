// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iot_connection_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IotConnectionInfo _$$_IotConnectionInfoFromJson(Map<String, dynamic> json) =>
    _$_IotConnectionInfo(
      ssid: json['s'] as String,
      password: json['p'] as String,
      token: json['t'] as String,
    );

Map<String, dynamic> _$$_IotConnectionInfoToJson(
        _$_IotConnectionInfo instance) =>
    <String, dynamic>{
      's': instance.ssid,
      'p': instance.password,
      't': instance.token,
    };
