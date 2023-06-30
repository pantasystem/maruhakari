
import 'package:client/endpoints/service.dart';
import 'package:client/schema/food_chart.dart';

class FoodChartRepository {
  FoodChartRepository({required this.client});
  final MaruhakariApiClient client;

  Future<FoodChart> getFoodChart({required String foodId, required DateTime beginAt, required DateTime endAt}) async {
    return await client.getFoodChart(
      foodId,
      beginAt.toIso8601String(),
      endAt.toIso8601String(),
    );
  }
}