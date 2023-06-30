
import 'package:client/endpoints/service.dart';
import 'package:client/schema/food_chart.dart';
import 'package:client/schema/handler.dart';

class FoodChartRepository {
  FoodChartRepository({required this.client});
  final MaruhakariApiClient client;

  Future<FoodChart> getFoodChart({required String foodId, required DateTime beginAt, required DateTime endAt}) async {
    return handleError(() async {
      return await client.getFoodChart(
        foodId,
        beginAt.toUtc().toIso8601String(),
        endAt.toUtc().toIso8601String(),
      );
    });
  }
}