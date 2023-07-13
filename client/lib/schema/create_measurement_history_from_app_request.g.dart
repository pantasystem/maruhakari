// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_measurement_history_from_app_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateMeasurementHistoryFromAppRequest
    _$$_CreateMeasurementHistoryFromAppRequestFromJson(
            Map<String, dynamic> json) =>
        _$_CreateMeasurementHistoryFromAppRequest(
          weight: (json['weight'] as num).toDouble(),
          nfcUid: json['nfc_uid'] as String,
          macAddress: json['mac_address'] as String?,
        );

Map<String, dynamic> _$$_CreateMeasurementHistoryFromAppRequestToJson(
        _$_CreateMeasurementHistoryFromAppRequest instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'nfc_uid': instance.nfcUid,
      'mac_address': instance.macAddress,
    };
