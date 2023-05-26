import 'package:client/endpoints/service.dart';
import 'package:client/schema/device.dart';
import 'package:client/schema/handler.dart';

class DeviceRepository {
  DeviceRepository({required this.client});

  final MaruhakariApiClient client;

  Future<List<Device>> getOwnDevices() async {
    return handleError(() async {
      return await client.getDevices();
    });
  }

  Future<Device> save({
    required String macAddress,
    required String token,
    String? label,
  }) {
    return handleError(() async {
      return await client.saveDevice(SaveDeviceRequest(
        macAddress: macAddress,
        token: token,
        label: label,
      ));
    });
  }
}
