import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/number_stepper.dart';

class AddFoodPage extends ConsumerStatefulWidget {
  const AddFoodPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddFoodPageState();
  }
}

class AddFoodPageState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: AppFoodPageAppBarTitle(section: notifier.section),
      ),
      body: () {
        switch (notifier.section) {
          case AddFoodSectionType.pasteNfc:
            return const AddFoodPagePasteNfcSectionBody();
          case AddFoodSectionType.scanNfc:
            return const AddFoodPageScanNfcSectionBody();
          case AddFoodSectionType.selectFood:
            return const Text("未実装");
          case AddFoodSectionType.inputFoodInfo:
            return const Text("未実装");
          case AddFoodSectionType.selectContainerType:
            return const Text("未実装");
          case AddFoodSectionType.inputContainerInfo:
            return const Text("未実装");
          case AddFoodSectionType.confirmation:
            return const Text("未実装");
        }
      }(),
    );
  }
}

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

class AddFoodPageStepper extends StatelessWidget {
  const AddFoodPageStepper(
      {super.key, required this.sectionType, required this.width});

  final AddFoodSectionType sectionType;
  final double width;

  @override
  Widget build(BuildContext context) {
    if (sectionType == AddFoodSectionType.inputContainerInfo) {
      return Container();
    }

    if (sectionType == AddFoodSectionType.inputFoodInfo) {
      return Container();
    }
    return NumberStepper(
      totalSteps: 4,
      width: width,
      curStep: () {
        switch (sectionType) {
          case AddFoodSectionType.pasteNfc:
            return 1;
          case AddFoodSectionType.scanNfc:
            return 2;
          case AddFoodSectionType.selectFood:
            return 3;
          case AddFoodSectionType.inputFoodInfo:
            return 1;
          case AddFoodSectionType.selectContainerType:
            return 4;
          case AddFoodSectionType.inputContainerInfo:
            return 4;
          case AddFoodSectionType.confirmation:
            return 4;
        }
      }(),
      stepCompleteColor: Theme.of(context).primaryColor,
      currentStepColor: const Color(0xffdbecff),
      inactiveColor: const Color(0xffbababa),
      lineWidth: 3.5,
    );
  }
}

class AppFoodPageAppBarTitle extends StatelessWidget {
  const AppFoodPageAppBarTitle({super.key, required this.section});

  final AddFoodSectionType section;

  @override
  Widget build(BuildContext context) {
    switch (section) {
      case AddFoodSectionType.pasteNfc:
        return const Text("NFCタグを貼り付け");
      case AddFoodSectionType.scanNfc:
        return const Text("NFCをスキャン");
      case AddFoodSectionType.selectFood:
        return const Text("調味料を選択");
      case AddFoodSectionType.inputFoodInfo:
        return const Text("調味料の情報を入力");
      case AddFoodSectionType.selectContainerType:
        return const Text("容器を選択");
      case AddFoodSectionType.inputContainerInfo:
        return const Text("容器の情報を入力");
      case AddFoodSectionType.confirmation:
        return const Text("確認");
    }
  }
}
