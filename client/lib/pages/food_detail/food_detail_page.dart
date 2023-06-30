
import 'package:client/providers/repositories.dart';
import 'package:client/schema/food.dart';
import 'package:client/schema/food_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoodDetailPage extends ConsumerWidget {
  const FoodDetailPage({super.key, required this.foodId});
  final String foodId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final food = ref.watch(foodFutureProvider(foodId));
    final chart = ref.watch(foodChartFutureProvider(foodId));
    return Scaffold(
      appBar: AppBar(
        title: Text(food.valueOrNull?.name ?? ''),
      ),
      body: Center(
        child: Text(
          chart.valueOrNull?.toString() ?? 'なんもない',
        ),
      ),
    );
  }
}

final foodFutureProvider = FutureProvider.family<Food, String>((ref, foodId) async {
  return ref.read(foodRepository).findOne(foodId);
});

final foodChartFutureProvider = FutureProvider.family<FoodChart, String>((ref, foodId) {
  final now = DateTime.now();
  now.add(const Duration(days: -7));
  return ref.read(foodChartRepository).getFoodChart(foodId: foodId, beginAt: now, endAt: DateTime.now());
});