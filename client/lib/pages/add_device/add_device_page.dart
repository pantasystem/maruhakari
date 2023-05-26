
import 'package:client/pages/add_device/add_device_appbar.dart';
import 'package:client/pages/add_device/add_device_page_input_server_info_body.dart';
import 'package:client/pages/add_device/add_device_page_select_device_body.dart';
import 'package:client/state/add_device_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'device_list_tile.dart';

class AddDevicePage extends ConsumerStatefulWidget {
  const AddDevicePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddDevicePageState();
  }
}

class AddDevicePageState extends ConsumerState<ConsumerStatefulWidget> {
  @override
  void initState() {
    [
      Permission.location,
      Permission.storage,
      Permission.bluetooth,
      Permission.bluetoothConnect,
      Permission.bluetoothScan
    ].request();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(addDevicePageNotifier);

    return Scaffold(
        appBar: AppBar(
          title: AddDeviceAppBarTitle(type: notifier.type),
        ),
        body: () {
          switch (notifier.type) {
            case AddDevicePageStateType.selectDevice:
              return const AddDevicePageSelectDeviceBody();
            case AddDevicePageStateType.inputConnectInfo:
              return AddDevicePageInputServerInfoBody(device: notifier.device!);
          }
        }());
  }
}

final scanResultStreamProvider = StreamProvider.autoDispose((ref) {
  return FlutterBluePlus.instance.scanResults;
});

final connectedDevicesFutureProvider = FutureProvider.autoDispose((ref) {
  return FlutterBluePlus.instance.connectedDevices;
});

final isScanningStreamProvider = StreamProvider.autoDispose((ref) {
  return FlutterBluePlus.instance.isScanning;
});

final startScanFutureProvider = FutureProvider.autoDispose((ref) async {
  await FlutterBluePlus.instance.startScan(timeout: const Duration(seconds: 4));
  ref.onDispose(() {
    FlutterBluePlus.instance.stopScan();
  });
});

final isDiscoveringServicesFamilyDevice =
    StreamProvider.autoDispose.family((a, BluetoothDevice device) {
  return device.isDiscoveringServices;
});
