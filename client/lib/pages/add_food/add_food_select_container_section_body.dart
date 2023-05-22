import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/schema/container_template.dart';
import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodSelectContainerSectionBody extends ConsumerWidget {
  const AddFoodSelectContainerSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerTemplates = ref.watch(containerTemplateFutureProvider);
    final notifier = ref.watch(addFoodPageNotifierProvider);
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
          const SizedBox(
            height: 16,
          ),
          Flexible(
            child: containerTemplates.when(data: (data) {
              return GridView.builder(
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final isSelected = notifier.selectedContainer == data[index];
                  return Card(
                    shape: isSelected
                        ? RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          )
                        : null,
                    color: isSelected ? Colors.red.shade50 : Colors.white,
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(data[index].label),
                            Image.network(
                              data[index].imageUrl,
                              width: 45,
                              height: 45,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        notifier.setSelectedContainerTemplate(data[index]);
                      },
                    ),
                  );
                },
              );
            }, error: (e, st) {
              return const Text("読み込みエラー");
            }, loading: () {
              return const CircularProgressIndicator();
            }),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "該当する容器がありません",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: notifier.validateContainerInfo() ? () {
                  notifier.goToConfirmationSection();
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

final containerTemplateFutureProvider =
    FutureProvider<List<ContainerTemplate>>((ref) async {
  return await ref.read(containerTemplateRepository).findAll();
});
