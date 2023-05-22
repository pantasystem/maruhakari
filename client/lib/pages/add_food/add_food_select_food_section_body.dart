import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/providers/repositories.dart';
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
                          return InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                              child: Row(
                                children: [
                                  Text(d[index].name)
                                ],
                              ),
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
