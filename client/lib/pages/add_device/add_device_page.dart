import 'dart:developer';

import 'package:client/pages/add_device/add_device_appbar.dart';
import 'package:client/state/add_device_page_state.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

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
    final scanResults = ref.watch(scanResultStreamProvider);

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

class AddDevicePageInputServerInfoBody extends ConsumerWidget {
  const AddDevicePageInputServerInfoBody({super.key, required this.device});

  final BluetoothDevice device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text("接続待ち"),
        TextButton(
            onPressed: () async {

              // final targetServices = await device.services.firstWhere((element) {
              //   log("elements:${element.map((e) => e.uuid.toString())}");
              //   return element.any((inEl) {
              //     log("element uuid: ${inEl.uuid}");
              //     return inEl.uuid.toString() ==
              //         "4426c565-997d-4902-946f-4060916183db";
              //   });
              // });
              final targetServices = await device.discoverServices();
              final service = targetServices.firstWhereOrNull((element) {
                return element.uuid.toString() ==
                    "4426c565-997d-4902-946f-4060916183db";
              });
              final c = service?.characteristics.firstWhereOrNull((element) {
                return element.uuid.toString() ==
                    "7a21cc0f-3845-4452-8ab6-86e035978d35";
              });
              if (c == null) {
                log("characteristic is null");
              } else {
                log("characteristic is not null");
              }
              c?.write([104, 101, 108, 108, 111]);
            },
            child: const Text("send text")),
      ],
    );
  }
}

class AddDevicePageSelectDeviceBody extends ConsumerWidget {
  const AddDevicePageSelectDeviceBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(addDevicePageNotifier);
    final scanResults = ref.watch(scanResultStreamProvider);
    final connectedDevices = ref.watch(connectedDevicesFutureProvider);
    ref.watch(startScanFutureProvider);

    return RefreshIndicator(
      onRefresh: () async {
        return FlutterBluePlus.instance
            .startScan(timeout: const Duration(seconds: 5));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("発見したデバイス"),
            scanResults.when(
              data: (data) {
                final items = data.where((element) {
                  return element.advertisementData.serviceUuids
                      .contains("4426c565-997d-4902-946f-4060916183db");
                }).toList();
                return ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];
                    return DeviceListTile(
                      onPressed: () {
                        item.device.connect();
                        notifier.onConnect(item.device);
                      },
                      device: item.device,
                    );
                  },
                );
              },
              error: (e, st) {
                return const Text("エラー");
              },
              loading: () {
                return ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ],
                );
              },
            ),
            connectedDevices.when(
              data: (data) {
                final items = data;

                return ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];
                    return DeviceListTile(
                      onPressed: () {
                        item.state.first.then((value) {
                          switch(value) {

                            case BluetoothDeviceState.disconnected:
                              item.connect();
                              break;
                            case BluetoothDeviceState.connecting:
                              break;
                            case BluetoothDeviceState.connected:
                              break;
                            case BluetoothDeviceState.disconnecting:
                              item.connect();
                              break;
                          }
                        });
                        notifier.onConnect(item);
                      },
                      device: item,
                    );
                  },
                );
              },
              error: (e, st) {
                return const Text("エラー");
              },
              loading: () {
                return ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DeviceListTile extends ConsumerWidget {
  const DeviceListTile(
      {super.key, required this.onPressed, required this.device});

  final VoidCallback onPressed;
  final BluetoothDevice device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            device.name,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(device.id.id),
          StreamBuilder(
            initialData: BluetoothDeviceState.disconnected,
            stream: device.state,
            builder: (context, snapshot) {
              return Text(snapshot.data.toString());
            },
          )
        ],
      ),
      onTap: onPressed,
    );
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
