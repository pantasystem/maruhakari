import 'package:client/schema/device.dart';
import 'package:client/schema/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_history.freezed.dart';
part 'measurement_history.g.dart';

@freezed
class MeasurementHistory with _$MeasurementHistory {
  const factory MeasurementHistory({
    required int id,
    @JsonKey(name: "food_id") required String foodId,
    required double weight,
    String? deviceId,
    Device? device,
    Food? food,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _MeasurementHistory;

  factory MeasurementHistory.fromJson(Map<String, dynamic> json) => _$MeasurementHistoryFromJson(json);
}

@freezed
class RecordHistoryRequest with _$RecordHistoryRequest {
  const factory RecordHistoryRequest({
    @JsonKey(name: 'device_token') required String deviceToken,
    @JsonKey(name: 'nfc_uid') required String nfcUid,
    required double weight,
  }) = _RecordHistoryRequest;

  factory RecordHistoryRequest.fromJson(Map<String, dynamic> json) => _$RecordHistoryRequestFromJson(json);
}
