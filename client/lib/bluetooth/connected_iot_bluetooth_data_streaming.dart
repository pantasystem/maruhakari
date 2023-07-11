
import 'dart:convert';
import 'dart:developer';

import 'package:async/async.dart';
import 'package:client/BluetoothConstants.dart';
import 'package:client/schema/device.dart';
import 'package:collection/collection.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class IoTCurrentSensorData {
  IoTCurrentSensorData({required this.nfcUid, required this.weight, required this.deviceMacAddress});
  final String deviceMacAddress;
  final String nfcUid;
  final double weight;
}

class ConnectedIoTBluetoothDataStreaming {
  Stream<IoTCurrentSensorData> currentWeightEventStream(List<Device> apiDevicesList) async* {
    final Set<String> listeningDeviceIds = {};
    final streamGroup = StreamGroup<IoTCurrentSensorData>();
    Stream<IoTCurrentSensorData> listenWeightAndNfcUid(BluetoothDevice device) async* {
      if (listeningDeviceIds.contains(device.id.id)) {
        return;
      }

      // NOTE: 一つも含まれていなければ終了
      if (!apiDevicesList.any((element) => element.macAddress == device.id.id)) {
        log("一度も接続したことがないので終了:${device.id.id}");
        return;
      }

      listeningDeviceIds.add(device.id.id);

      final state = await device.state.first;

      switch(state) {
        case BluetoothDeviceState.disconnected:
          await device.connect();
          break;
        case BluetoothDeviceState.connecting:
          break;
        case BluetoothDeviceState.connected:
          break;
        case BluetoothDeviceState.disconnecting:
          await device.connect();
          break;
      }
      final services = await device.discoverServices();
      final service = services.firstWhereOrNull((element) => element.uuid.toString() == BluetoothConstants.serviceUuid);

      device.requestMtu(500);
      final c = service?.characteristics.firstWhereOrNull((element) => element.uuid.toString() == BluetoothConstants.currentNfcAndWeightCharacteristicUuid);
      if (c == null) {
        log("characteristic is null");
        listeningDeviceIds.remove(device.id.id);
        return;
      }
      c.setNotifyValue(true);

      await for (final event in c.onValueChangedStream) {
        device.requestMtu(500);
        final json = String.fromCharCodes(event);
        final map = jsonDecode(json) as Map<String, dynamic>;
        final weight = map["weight"] as double;
        final nfcUid = map["nfc_uid"] as String?;
        if (nfcUid == null) {
          continue;
        }

        yield IoTCurrentSensorData(nfcUid: nfcUid, weight: weight, deviceMacAddress: device.id.id);
      }

    }

    final Map<String, BluetoothDevice> map = {};
    final devices = await FlutterBluePlus.instance.connectedDevices;
    for (var element in devices) {
      streamGroup.add(listenWeightAndNfcUid(element));
    }

    FlutterBluePlus.instance.scanResults.listen((event) {
      for (var element in event) {
        if (map.containsKey(element.device.id.id)) {
          continue;
        }
        if (element.advertisementData.serviceUuids.contains(BluetoothConstants.serviceUuid)) {
          map[element.device.id.id] = element.device;
          streamGroup.add(listenWeightAndNfcUid(element.device));
        }
      }
    });

    await for (final event in streamGroup.stream) {
      yield event;
    }
  }
}