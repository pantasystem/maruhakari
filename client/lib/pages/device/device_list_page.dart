

import 'package:client/providers/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BluetoothDeviceListPage extends ConsumerWidget {
  const BluetoothDeviceListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("連携済み秤一覧"),),
      body: RefreshIndicator(
        child: ListView(
          children: [
            ...ref.watch(deviceListFutureProvider).when(
              data: (devices) {
                return devices.map((device) {
                  return ListTile(
                    title: Text(device.label ?? "名称未設定"),
                    subtitle: Text(device.macAddress),
                  );
                }).toList();
              },
              loading: () {
                return const [Center(child: CircularProgressIndicator(),)];
              },
              error: (e, s) {
                return const [Center(child: Text("エラーが発生しました"),)];
              }
            )
          ],
        ),
        onRefresh: () {
          return ref.refresh(deviceListFutureProvider.future);
        },
      ),
    );
  }
}

final deviceListFutureProvider = FutureProvider.autoDispose((ref) {
  return ref.read(deviceRepository).getOwnDevices();
});