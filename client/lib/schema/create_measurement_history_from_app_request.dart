import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_measurement_history_from_app_request.freezed.dart';
part 'create_measurement_history_from_app_request.g.dart';

@freezed
class CreateMeasurementHistoryFromAppRequest with _$CreateMeasurementHistoryFromAppRequest {
  const factory CreateMeasurementHistoryFromAppRequest({
    required double weight,
    @JsonKey(name: "nfc_uid") required String nfcUid,
    @JsonKey(name: "mac_address") String? macAddress,
  }) = _CreateMeasurementHistoryFromAppRequest;

  factory CreateMeasurementHistoryFromAppRequest.fromJson(Map<String, dynamic> json) => _$CreateMeasurementHistoryFromAppRequestFromJson(json);
}