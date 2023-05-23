import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodInputFoodInfoSectionBody extends ConsumerStatefulWidget {
  const AddFoodInputFoodInfoSectionBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddFoodInputFoodInfoSectionBodyState();
  }
}

class AddFoodInputFoodInfoSectionBodyState extends ConsumerState<AddFoodInputFoodInfoSectionBody> {
  final formKey = GlobalKey<FormState>();
  final inputNameTextController = TextEditingController();
  final inputGramPerMillerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: inputNameTextController,
                  decoration: const InputDecoration(
                    label: Text("名称"),
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "一文字以上入力してください。";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "調味料の単位",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text("グラム"),
                  leading: Radio(
                    value: FoodUnitType.gram,
                    onChanged: (v) {
                      notifier.setUnitType(v);
                    },
                    groupValue: notifier.unitType,
                  ),
                  onTap: () {
                    notifier.setUnitType(FoodUnitType.gram);
                  },
                ),
                ListTile(
                  title: const Text("ミリリットル"),
                  leading: Radio(
                    value: FoodUnitType.milliliter,
                    onChanged: (v) {
                      notifier.setUnitType(v);
                    },
                    groupValue: notifier.unitType,
                  ),
                  onTap: () {
                    notifier.setUnitType(FoodUnitType.milliliter);
                  },
                ),
                if (notifier.unitType == FoodUnitType.milliliter) ...[
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: inputGramPerMillerController,
                    decoration: const InputDecoration(
                      label: Text("1mlあたりの重さ"),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const Text("わからない場合は空欄にしてください")
                ],
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      notifier.setFoodInputFormInfo(
                        name: inputNameTextController.text,
                        gramPerMiller: double.tryParse(
                          inputGramPerMillerController.text.toString(),
                        ),
                      );
                    }
                  },
                  child: const Text("次へ"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
