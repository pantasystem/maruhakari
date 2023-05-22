

import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

class AddFoodPageScanNfcSectionBody extends ConsumerStatefulWidget {
  const AddFoodPageScanNfcSectionBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddFoodPageScanNfcSectionBodyState();
  }
}
class AddFoodPageScanNfcSectionBodyState extends ConsumerState {

  @override
  void initState() {
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      onReceiveNfcData(tag.data);
    });
    super.initState();
  }

  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddFoodPageStepper(
            sectionType: AddFoodSectionType.scanNfc,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "貼り付けたNFCを\nスキャンしてください",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  "assets/img_scan_nfc.png",
                  width: 320,
                  height: 320,
                ),
                const SizedBox(height: 16),
                const Text("スキャンするのを待っています..."),
                TextButton(onPressed: () {
                  onReceiveNfcData(dummy);
                }, child: const Text("test"))
              ],
            ),
          )
        ],
      ),
    );
  }

  void onReceiveNfcData(Map<String, dynamic> data) {
    // final ids = data.values.map((e) {
    //   final map = (e as Map<dynamic, dynamic>?) ?? {};
    //   final list = map["identifier"] as Uint8List?;
    //   return list;
    // }).whereType<Uint8List>().map((id){
    //   return id.map((e) => e.toRadixString(16)).reduce((value, element) => element + value);
    // });
    // final id = ids.firstOrNull;
    // if (id == null) {
    //   return;
    // }
    ref.read(addFoodPageNotifierProvider).setNfcUid('id');
  }
}

final dummy = {"nfca": {"identifier": [170, 225, 185, 220], "atqa": [4, 0], "maxTransceiveLength": 253, "sak": 8, "timeout": 618}, "mifareclassic": {"identifier": [170, 225, 185, 220], "blockCount": 64, "maxTransceiveLength": 253, "sectorCount": 16, "size": 1024, "timeout": 618, "type": 0}, "ndefformatable": {"identifier": [170, 225, 185, 220]}};
