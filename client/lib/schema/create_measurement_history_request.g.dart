// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_measurement_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateMeasurementHistoryRequest _$$_CreateMeasurementHistoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateMeasurementHistoryRequest(
      weight: (json['weight'] as num).toDouble(),
      recordAt: json['record_at'] == null
          ? null
          : DateTime.parse(json['record_at'] as String),
    );

Map<String, dynamic> _$$_CreateMeasurementHistoryRequestToJson(
        _$_CreateMeasurementHistoryRequest instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'record_at': instance.recordAt?.toIso8601String(),
    };
