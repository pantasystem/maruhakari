// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeasurementHistory _$$_MeasurementHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_MeasurementHistory(
      id: json['id'] as int,
      foodId: json['food_id'] as String,
      weight: (json['weight'] as num).toDouble(),
      deviceId: json['deviceId'] as String?,
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      food: json['food'] == null
          ? null
          : Food.fromJson(json['food'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MeasurementHistoryToJson(
        _$_MeasurementHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_id': instance.foodId,
      'weight': instance.weight,
      'deviceId': instance.deviceId,
      'device': instance.device,
      'food': instance.food,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_RecordHistoryRequest _$$_RecordHistoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RecordHistoryRequest(
      deviceToken: json['device_token'] as String,
      nfcUid: json['nfc_uid'] as String,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RecordHistoryRequestToJson(
        _$_RecordHistoryRequest instance) =>
    <String, dynamic>{
      'device_token': instance.deviceToken,
      'nfc_uid': instance.nfcUid,
      'weight': instance.weight,
    };
