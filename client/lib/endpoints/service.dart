
import 'package:client/repositories/auth_repository.dart';
import 'package:client/schema/account.dart';
import 'package:client/schema/container_template.dart';
import 'package:client/schema/food.dart';
import 'package:client/schema/food_template.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'service.g.dart';

@RestApi(baseUrl: "https://maruhakari.panta.systems")
abstract class MaruhakariApiClient {
  factory MaruhakariApiClient(Dio dio, {String baseUrl}) = _MaruhakariApiClient;
  @POST("api/v1/accounts/register")
  Future<TokenWithAccount> register(@Body() CreateAccountRequest req);

  @POST("api/v1/accounts/login")
  Future<TokenWithAccount> login(@Body() LoginAccountRequest req);

  @GET("api/v1/accounts/verify")
  Future<Account> verifyToken();

  @GET("api/v1/container-templates")
  Future<ContainerTemplate> getContainerTemplates();

  @GET("api/v1/food-templates")
  Future<FoodTemplate> getFoodTemplates();

  @GET("api/v1/foods")
  Future<List<Food>> getOwnFoods();

  @GET("api/v1/foods/{foodId}")
  Future<Food> getFood(@Path("foodId") String foodId);
  
  @GET("api/v1/foods/{nfcUid}/related-nfc")
  Future<Food> getFoodByNfcUid(@Path("nfcUid") String nfcUid);

  @POST("api/v1/foods")
  Future<Food> createFood(@Body() CreateFoodRequest req);

  @PUT("api/v1/foods/{foodId}")
  Future<Food> updateFood(@Path("foodId") String foodId, @Body() UpdateFoodRequest req);

}


MaruhakariApiClient create(AuthRepository service,
    {String baseUrl = 'https://maruhakari.panta.systems'}) {
  final dio = Dio();

  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    final token = await service.getToken();
    if (token != null) {
      options.headers['Authorization'] = "Bearer $token";
    }
    options.headers['Accept'] = 'application/json';

    handler.next(options);
  }));
  return MaruhakariApiClient(dio, baseUrl: baseUrl);
}