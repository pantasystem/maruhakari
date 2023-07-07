import 'package:client/endpoints/service.dart';
import 'package:client/schema/create_measurement_history_request.dart';
import 'package:client/schema/food.dart';
import 'package:client/schema/handler.dart';
import 'package:client/schema/measurement_history.dart';

class FoodRepository {
  FoodRepository({required this.client});

  final MaruhakariApiClient client;

  Future<Food> create({
    required String name,
    required String nfcUid,
    required double containerWeightGram,
    required double containerMaxWeightGram,
  }) async {
    return await handleError(() async {
      return await client.createFood(
        CreateFoodRequest(
          name: name,
          nfcUid: nfcUid,
          containerWeightGram: containerWeightGram,
          containerMaxWeightGram: containerMaxWeightGram,
          force: true,
        ),
      );
    });
  }

  Future<MyFoodsResponse> getMyFoods() async {
    return await handleError(() async {
      return await client.getOwnFoods();
    });
  }

  Future<Food> findOne(String foodId) async {
    return await handleError(() async {
      return await client.getFood(foodId);
    });
  }

  Future<List<MeasurementHistory>> getMeasurementHistories(String foodId, {required DateTime beginAt, required DateTime endAt}) async {
    return await handleError(() async {
      return await client.getMeasurementHistories(foodId, beginAt.toUtc().toIso8601String(), endAt.toUtc().toIso8601String());
    });
  }

  Future<void> delete(String foodId) async {
    return await handleError(() async {
      await client.deleteFood(foodId);
    });
  }

  Future<void> recordHistory(String foodId, {required double weight}) async {
    return await handleError(() async {
      await client.createMeasurementHistory(foodId, CreateMeasurementHistoryRequest(weight: weight));
    });
  }
}
