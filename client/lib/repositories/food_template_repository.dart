
import 'package:client/endpoints/service.dart';
import 'package:client/schema/food_template.dart';
import 'package:client/schema/handler.dart';

class FoodTemplateRepository {
  FoodTemplateRepository({required this.client});
  final MaruhakariApiClient client;

  Future<List<FoodTemplate>> findAll() async {
    return await handleError(() async {
      return await client.getFoodTemplates();
    });
  }
}