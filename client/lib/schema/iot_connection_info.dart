
import 'package:freezed_annotation/freezed_annotation.dart';

part 'iot_connection_info.freezed.dart';
part 'iot_connection_info.g.dart';

@freezed
class IotConnectionInfo with _$IotConnectionInfo {
  const factory IotConnectionInfo({
    @JsonKey(name: 's') required String ssid,
    @JsonKey(name: 'p') required String password,
    @JsonKey(name: 't') required String token,
  }) = _IotConnectionInfo;

  factory IotConnectionInfo.fromJson(Map<String, dynamic> json) => _$IotConnectionInfoFromJson(json);
}
