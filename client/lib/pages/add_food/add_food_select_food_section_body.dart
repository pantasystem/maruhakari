import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/schema/food_template.dart';
import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodSelectFoodSectionBody extends ConsumerWidget {
  const AddFoodSelectFoodSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodTemplates = ref.watch(foodTemplatesFutureProvider);
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AddFoodPageStepper(
                  sectionType: AddFoodSectionType.selectFood,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "調味料を選択してください",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: const Text("名称を入力"),
                    contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                // Flexible(
                //   flex: 1,
                //   child: ListView(
                //     children: [],
                //   ),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: foodTemplates.when(
                    data: (d) {
                      return ListView.builder(
                        itemCount: d.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                              child: Text(d[index].name),
                            ),
                            onTap: () {
                              notifier.setFoodInfoByTemplate(d[index]);
                            },
                          );
                        },
                      );
                    },
                    error: (e, st) {
                      return const Text("候補の読み込みに失敗");
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "該当する調味料がありません",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: notifier.validateFoodInfo() ? () {
                  notifier.goToSelectContainerSection();
                } : null,
                child: const Text("次へ"),
              )
            ],
          )
        ],
      ),
    );
  }
}

final foodTemplatesFutureProvider = FutureProvider((ref) async {
  return await ref.read(foodTemplateRepository).findAll();
});

// final dummyFoodTemplates = [
//   FoodTemplate(
//       id: "id-1",
//       name: "しょうゆ",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-2",
//       name: "みりん",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-3",
//       name: "サラダ油",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-4",
//       name: "ポン酢",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-5",
//       name: "マヨネーズ",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-6",
//       name: "ケチャップ",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-7",
//       name: "レモン汁",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
//   FoodTemplate(
//       id: "id-8",
//       name: "胡椒",
//       createdAt: DateTime.now(),
//       updatedAt: DateTime.now(),
//       gramPerMiller: 12),
// ];
