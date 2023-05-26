import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class Device with _$Device {
  const factory Device({
    required String id,
    @JsonKey(name: 'mac_address') required String macAddress,
    required String token,
    @JsonKey(name: 'account_id') required String accountId,
    String? label,
    @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson) required DateTime createdAt,
    @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson) required DateTime updatedAt,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
class SaveDeviceRequest with _$SaveDeviceRequest {
  const factory SaveDeviceRequest({
    @JsonKey(name: 'mac_address') required String macAddress,
    required String token,
    String? label,
  }) = _SaveDeviceRequest;

  factory SaveDeviceRequest.fromJson(Map<String, dynamic> json) => _$SaveDeviceRequestFromJson(json);
}

DateTime _fromJson(String dateString) => DateTime.parse(dateString);
String _toJson(DateTime dateTime) => dateTime.toIso8601String();
