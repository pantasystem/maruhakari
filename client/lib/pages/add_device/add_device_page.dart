
import 'package:client/state/add_device_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'device_list_tile.dart';


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
                          switch (value) {
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
