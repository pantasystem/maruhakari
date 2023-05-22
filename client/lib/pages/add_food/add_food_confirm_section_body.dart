import 'package:client/state/add_food_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodConfirmSectionBody extends ConsumerWidget {
  const AddFoodConfirmSectionBody({super.key, required this.onConfirmButtonClicked});
  final VoidCallback onConfirmButtonClicked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(addFoodPageNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("調味料", style: TextStyle(fontSize: 16, color: Colors.blue),),
              Text(notifier.name ?? '', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 4,),
              const Text("空の容器の重さ", style: TextStyle(fontSize: 16, color: Colors.blue),),
              Text("${notifier.containerWeightGram ?? 0}g", style: const TextStyle(fontSize: 20)),
              if (notifier.gramPerMilliliter != null)
                ...[
                  const SizedBox(height: 4,),
                  const Text("1mlあたりの重さ", style: TextStyle(fontSize: 16, color: Colors.blue),),
                  Text("${notifier.gramPerMilliliter ?? 0}g", style: const TextStyle(fontSize: 20)),
                ],
              const SizedBox(height: 4,),
              const Text("容器の容量", style: TextStyle(fontSize: 16, color: Colors.blue),),
              Text("${notifier.containerMaxWeightGram ?? 0}g", style: const TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: onConfirmButtonClicked, child: const Text("決定"))
            ],
          )
        ],
      ),
    );
  }
}
