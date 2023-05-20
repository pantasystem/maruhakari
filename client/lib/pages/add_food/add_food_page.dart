import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        body: Column(
          children: [
            AddFoodPageStepper(sectionType: notifier.section, width: MediaQuery.of(context).size.width),
          ],
        ));
  }
}

class AddFoodPageStepper extends StatelessWidget {
  const AddFoodPageStepper({super.key, required this.sectionType, required this.width});
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
        switch(sectionType) {

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
    switch(section) {
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


