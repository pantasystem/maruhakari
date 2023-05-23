
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

class AddFoodInputFoodInfoSectionBodyState extends ConsumerState {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Padding(
      key: _key,
      padding: const EdgeInsets.all(16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text("名称")
                  ),
                ),
                const SizedBox(height: 16,),
                const Text("調味料の単位", style: TextStyle(fontSize: 18),),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text("グラム"),
                  leading: Radio(
                    value: FoodUnitType.gram,
                    onChanged: (v) {
                      notifier.setUnitType(v);
                    }, groupValue: notifier.unitType,
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
                    }, groupValue: notifier.unitType,
                  ),
                  onTap: () {
                    notifier.setUnitType(FoodUnitType.milliliter);
                  },
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}