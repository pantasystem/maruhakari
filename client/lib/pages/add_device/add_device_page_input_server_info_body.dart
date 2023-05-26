import 'dart:convert';
import 'dart:developer';

import 'package:client/pages/add_device/add_device_page.dart';
import 'package:client/schema/iot_connection_info.dart';
import 'package:client/state/add_device_page_state.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'add_device_appbar.dart';

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

class AddDevicePageInputServerInfoBody extends ConsumerStatefulWidget {
  final BluetoothDevice device;

  const AddDevicePageInputServerInfoBody({super.key, required this.device});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddDevicePageInputServerInfoBodyState();
  }
}

class AddDevicePageInputServerInfoBodyState
    extends ConsumerState<AddDevicePageInputServerInfoBody> {
  final inputSsidController = TextEditingController();
  final inputPasswordController = TextEditingController();
  final inputDeviceNameController = TextEditingController();

  void _sendConnectionInfo({
    required String ssid,
    required String password,
    required String token,
  }) async {
    final state = await widget.device.state.first;
    if (state == BluetoothDeviceState.disconnected) {
      await widget.device.connect();
    }
    final targetServices = await widget.device.discoverServices();
    final service = targetServices.firstWhereOrNull((element) {
      return element.uuid.toString() == "4426c565-997d-4902-946f-4060916183db";
    });
    final c = service?.characteristics.firstWhereOrNull((element) {
      return element.uuid.toString() == "7a21cc0f-3845-4452-8ab6-86e035978d35";
    });
    if (c == null) {
      log("characteristic is null");
    } else {
      log("characteristic is not null");
    }
    final info = IotConnectionInfo(
      ssid: ssid,
      password: password,
      token: token,
    );
    final json = jsonEncode(info.toJson());
    List<int> codeUnits = [];
    for (int i = 0; i < json.length; i++) {
      codeUnits.add(json.codeUnitAt(i));
    }
    c?.write(codeUnits);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Wi-Fi接続情報"),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: inputSsidController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'SSID',
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: inputPasswordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'パスワード',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: inputDeviceNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'デバイス名',
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _sendConnectionInfo(ssid: inputSsidController.text, password: inputPasswordController.text, token: "token");
                  },
                  child: const Text("連携"),
                )
              ],
            )
          ],
        ));
  }
}
