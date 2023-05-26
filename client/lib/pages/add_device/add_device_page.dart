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
              final targetServices =
                  await device.services.firstWhere((element) {
                return element.any((inEl) {
                  return inEl.uuid.toString() ==
                      "4426c565-997d-4902-946f-4060916183db";
                });
              });
              final service = targetServices.firstWhereOrNull((element) {
                return element.uuid.toString() ==
                    "4426c565-997d-4902-946f-4060916183db";
              });
              final c = service?.characteristics.firstWhereOrNull((element) {
                return element.uuid.toString() ==
                    "7a21cc0f-3845-4452-8ab6-86e035978d35";
              });
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
    ref.watch(startScanFutureProvider);

    return RefreshIndicator(
      onRefresh: () async {
        return FlutterBluePlus.instance
            .startScan(timeout: const Duration(seconds: 5));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: scanResults.when(
          data: (data) {
            final items = data.where((element) {
              return element.advertisementData.serviceUuids
                  .contains("4426c565-997d-4902-946f-4060916183db");
            }).toList();
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        item.device.name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(item.device.id.id)
                    ],
                  ),
                  onTap: () {
                    notifier.onConnect(item.device);

                    // item.device.connect().then((value) {
                    //   notifier.onConnect(item.device);
                    // });
                  },
                );
              },
            );
          },
          error: (e, st) {
            return const Text("エラー");
          },
          loading: () {
            return ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            ]);
          },
        ),
      ),
    );
  }
}

final scanResultStreamProvider = StreamProvider.autoDispose((ref) {
  return FlutterBluePlus.instance.scanResults;
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
