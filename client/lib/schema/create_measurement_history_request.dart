import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_measurement_history_request.freezed.dart';
part 'create_measurement_history_request.g.dart';

@freezed
class CreateMeasurementHistoryRequest with _$CreateMeasurementHistoryRequest {
  const factory CreateMeasurementHistoryRequest({
    required double weight,
    @JsonKey(name: "record_at") DateTime? recordAt,
  }) = _CreateMeasurementHistoryRequest;

  factory CreateMeasurementHistoryRequest.fromJson(Map<String, dynamic> json) => _$CreateMeasurementHistoryRequestFromJson(json);
}