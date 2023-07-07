import 'package:client/providers/repositories.dart';
import 'package:client/schema/food.dart';
import 'package:client/schema/food_chart.dart';
import 'package:client/schema/measurement_history.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoodDetailPage extends ConsumerWidget {
  const FoodDetailPage({super.key, required this.foodId});

  final String foodId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final food = ref.watch(foodFuturePollingProvider(foodId));
    final chart = ref.watch(foodChartPollingStreamProvider(foodId));
    final histories =
        ref.watch(foodMeasurementPollingHistories(foodId)).valueOrNull ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text(food.valueOrNull?.name ?? ''),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.edit),
          //   onPressed: () {
          //     Navigator.of(context).pushNamed('/food/edit', arguments: foodId);
          //   },
          // ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("削除の確認"),
                    content: const Text("この食品を削除しますか？"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("キャンセル"),
                      ),
                      TextButton(
                          onPressed: () {
                            ref.read(foodRepository).delete(foodId).then(
                                  (value) {
                                Navigator.of(context).pop();
                              },
                            );
                          },
                          child: const Text("削除"))
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          FoodInfoCard(food: food.valueOrNull, chart: chart.valueOrNull),
          Card(
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "アクティビティ(${histories.length})",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context) {
                          return AddWeightHistoryDialog(foodId: foodId);
                        });
                      },
                      icon: const Icon(Icons.add),
                    )
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: histories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final history = histories[index];
                    final weight = history.weight -
                        (history.food?.containerWeightGram ?? 0);
                    final percentage =
                        (weight / (history.food?.containerMaxWeightGram ?? 1)) *
                            100;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${percentage.round()}%",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: percentage <= 10
                                          ? Colors.red
                                          : Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${weight.round()}g",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: percentage <= 10
                                          ? Colors.red
                                          : Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                              Text(history.device?.label ?? "デバイス名なし")
                            ],
                          ),
                          Column(
                            children: [
                              if (history.createdAt != null) ...[
                                Text(
                                    "${history.createdAt?.year}/${history.createdAt?.month}/${history.createdAt?.day}"),
                                Text(
                                    "${history.createdAt?.hour}:${history.createdAt?.minute}"),
                              ]
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FoodInfoCard extends StatelessWidget {
  const FoodInfoCard({
    super.key,
    required this.food,
    required this.chart,
  });

  final Food? food;
  final FoodChart? chart;

  @override
  Widget build(BuildContext context) {
    final graph = chart?.records ?? [];
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("重さの変化",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: graph.map((e) => FlSpot(e.x, e.y)).toList(),
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                          show: true, color: Colors.blue.withOpacity(0.3)),
                    )
                  ],
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(),
                    rightTitles: AxisTitles(),
                    topTitles: AxisTitles(),
                    bottomTitles: AxisTitles(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "${chart?.beginAt.year}/${chart?.beginAt.month}/${chart?.beginAt.day}"),
                Text(
                    "${chart?.endAt.year}/${chart?.endAt.month}/${chart?.endAt.day}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AddWeightHistoryDialog extends ConsumerStatefulWidget {
  final String foodId;

  const AddWeightHistoryDialog({super.key, required this.foodId});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AddWeightHistoryState();
  }
}

class AddWeightHistoryState extends ConsumerState<AddWeightHistoryDialog> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("手動で追加"),
      content: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          labelText: "重さ(g)",
        ),
      ),
      actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop();
        }, child: const Text("キャンセル")),
        TextButton(onPressed: () {
          final number = double.tryParse(controller.text);
          if (number != null) {
            ref.read(foodRepository).recordHistory(widget.foodId, weight: number).then((value) {
              Navigator.of(context).pop();
            });
          }
        }, child: const Text("追加"))
      ],
    );
  }
}

final foodFuturePollingProvider =
    StreamProvider.family<Food, String>((ref, foodId) async* {
  var enable = true;
  ref.onDispose(() {
    enable = false;
  });
  while (enable) {
    yield await ref.read(foodRepository).findOne(foodId);
    await Future.delayed(const Duration(seconds: 5));
  }
});

final foodChartPollingStreamProvider =
    StreamProvider.family<FoodChart, String>((ref, foodId) async* {
  var enable = true;
  ref.onDispose(() {
    enable = false;
  });
  while (enable) {
    yield await ref.read(foodChartRepository).getFoodChart(
          foodId: foodId,
          beginAt: DateTime.now().subtract(const Duration(days: 50)),
          endAt: DateTime.now(),
        );
    await Future.delayed(const Duration(seconds: 5));
  }
});

final foodMeasurementPollingHistories = StreamProvider.autoDispose
    .family<List<MeasurementHistory>, String>((ref, request) async* {
  var enable = true;
  ref.onDispose(() {
    enable = false;
  });
  for (; enable;) {
    yield await ref.read(foodRepository).getMeasurementHistories(
          request,
          beginAt: DateTime.now().subtract(const Duration(days: 50)),
          endAt: DateTime.now(),
        );
    await Future.delayed(const Duration(seconds: 5));
  }
});
