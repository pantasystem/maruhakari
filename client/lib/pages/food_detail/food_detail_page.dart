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
    final food = ref.watch(foodFutureProvider(foodId));
    final chart = ref.watch(foodChartFutureProvider(foodId));
    final graph = chart.valueOrNull?.records ?? [];
    final histories = ref.watch(foodMeasurementHistories(foodId)).valueOrNull ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text(food.valueOrNull?.name ?? ''),
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
                const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("アクティビティ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: histories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final history = histories[index];
                    final weight = history.weight - (history.food?.containerWeightGram ?? 0);
                    final percentage = (weight / (history.food?.containerMaxWeightGram ?? 1)) * 100;
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(children: [
                                Text("${percentage.round()}%"),
                              ],)
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

final foodFutureProvider =
    FutureProvider.family<Food, String>((ref, foodId) async {
  return ref.read(foodRepository).findOne(foodId);
});

final foodChartFutureProvider =
    FutureProvider.family<FoodChart, String>((ref, foodId) {
  return ref.read(foodChartRepository).getFoodChart(
        foodId: foodId,
        beginAt: DateTime.now().subtract(const Duration(days: 50)),
        endAt: DateTime.now(),
      );
});

final foodMeasurementHistories = FutureProvider.family<List<MeasurementHistory>,
    String>((ref, request) async {
  return ref.read(foodRepository).getMeasurementHistories(request, beginAt: DateTime.now().subtract(const Duration(days: 50)),
  endAt: DateTime.now(),);
});