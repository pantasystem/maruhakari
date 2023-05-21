// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeasurementHistory _$$_MeasurementHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_MeasurementHistory(
      id: json['id'] as String,
      foodId: json['food_id'] as String,
      weight: (json['weight'] as num).toDouble(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_MeasurementHistoryToJson(
        _$_MeasurementHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_id': instance.foodId,
      'weight': instance.weight,
      'created_at': instance.createdAt,
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
