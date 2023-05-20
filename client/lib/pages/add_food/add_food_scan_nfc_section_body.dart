
import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodPageScanNfcSectionBody extends ConsumerWidget {
  const AddFoodPageScanNfcSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
