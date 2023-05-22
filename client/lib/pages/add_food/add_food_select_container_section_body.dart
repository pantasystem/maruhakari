import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodSelectContainerSectionBody extends ConsumerWidget {
  const AddFoodSelectContainerSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          AddFoodPageStepper(
            sectionType: AddFoodSectionType.selectContainerType,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(height: 16),
          const Text(
            "調味料の容器を選択してください",
            style: TextStyle(
              fontSize: 20,
            ),
          ),

        ],
      ),
    );
  }
}
