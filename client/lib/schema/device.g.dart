// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Device _$$_DeviceFromJson(Map<String, dynamic> json) => _$_Device(
      id: json['id'] as String,
      macAddress: json['mac_address'] as String,
      token: json['token'] as String,
      accountId: json['account_id'] as String,
      label: json['label'] as String?,
      createdAt: _fromJson(json['created_at'] as String),
      updatedAt: _fromJson(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'mac_address': instance.macAddress,
      'token': instance.token,
      'account_id': instance.accountId,
      'label': instance.label,
      'created_at': _toJson(instance.createdAt),
      'updated_at': _toJson(instance.updatedAt),
    };

_$_SaveDeviceRequest _$$_SaveDeviceRequestFromJson(Map<String, dynamic> json) =>
    _$_SaveDeviceRequest(
      macAddress: json['mac_address'] as String,
      token: json['token'] as String,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$_SaveDeviceRequestToJson(
        _$_SaveDeviceRequest instance) =>
    <String, dynamic>{
      'mac_address': instance.macAddress,
      'token': instance.token,
      'label': instance.label,
    };
