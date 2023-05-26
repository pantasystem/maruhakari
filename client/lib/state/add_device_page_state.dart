
import 'package:flutter/cupertino.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDevicePageNotifier extends ChangeNotifier {

  AddDevicePageStateType type = AddDevicePageStateType.selectDevice;
  BluetoothDevice? device;

  void onConnect(BluetoothDevice device) {
    type = AddDevicePageStateType.inputConnectInfo;
    this.device = device;
    notifyListeners();
  }
}

enum AddDevicePageStateType {
  selectDevice, inputConnectInfo
}

final addDevicePageNotifier = ChangeNotifierProvider.autoDispose((ref) {
  return AddDevicePageNotifier();
});