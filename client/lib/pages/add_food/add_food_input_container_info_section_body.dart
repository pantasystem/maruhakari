import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodInputContainerInfoSectionBody extends ConsumerStatefulWidget {
  const AddFoodInputContainerInfoSectionBody({super.key, this.containerWeight, this.containerMaxWeight});
  final double? containerWeight;
  final double? containerMaxWeight;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddFoodInputContainerInfoSectionBodyState();
  }
}

class AddFoodInputContainerInfoSectionBodyState extends ConsumerState<AddFoodInputContainerInfoSectionBody> {
  final _formKey = GlobalKey<FormState>();
  final inputContainerWeightTextController = TextEditingController();
  final inputContainerMaxWeightTextController = TextEditingController();

  @override
  void initState() {
    inputContainerWeightTextController.text = widget.containerWeight?.toString() ?? "";
    inputContainerMaxWeightTextController.text = widget.containerMaxWeight?.toString() ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: inputContainerWeightTextController,
                  decoration: const InputDecoration(
                    label: Text("容器の重さを入力"),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: inputContainerMaxWeightTextController,
                  decoration: InputDecoration(
                    label: const Text("容器の容積を入力"),
                    suffixText: notifier.unitType == FoodUnitType.milliliter
                        ? "ml"
                        : "g",
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "数字で容器の容量を入力してください。";
                    }
                    return null;
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      notifier.setContainerInputFormInfo(
                        containerWeight: double.tryParse(
                            inputContainerWeightTextController.text),
                        containerMaxInput: double.tryParse(
                            inputContainerMaxWeightTextController.text),
                      );
                    }
                  },
                  child: const Text("次へ"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
