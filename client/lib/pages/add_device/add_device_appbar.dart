
import 'package:client/state/add_device_page_state.dart';
import 'package:flutter/cupertino.dart';

class AddDeviceAppBarTitle extends StatelessWidget {
  const AddDeviceAppBarTitle({super.key, required this.type});
  final AddDevicePageStateType type;

  @override
  Widget build(BuildContext context) {
    switch(type) {
      case AddDevicePageStateType.selectDevice:
        return const Text("デバイスを選択");
      case AddDevicePageStateType.inputConnectInfo:
        return const Text("接続情報を入力");
    }
  }
}