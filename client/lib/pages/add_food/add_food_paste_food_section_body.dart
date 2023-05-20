import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'add_food_page.dart';

class AddFoodPagePasteNfcSectionBody extends ConsumerWidget {
  const AddFoodPagePasteNfcSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddFoodPageStepper(
            sectionType: AddFoodSectionType.pasteNfc,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "NFCタグを容器の底に\n貼り付けてください。",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 32,
              ),
              SvgPicture.asset(
                'assets/img_paste_nfc_to_container.svg',
                width: 320,
                height: 320,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(addFoodPageNotifierProvider).goToScanNfcSection();
                },
                child: const Text("次へ"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
