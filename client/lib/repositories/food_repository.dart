import 'package:client/endpoints/service.dart';
import 'package:client/schema/food.dart';
import 'package:client/schema/handler.dart';

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
}
