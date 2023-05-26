import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
