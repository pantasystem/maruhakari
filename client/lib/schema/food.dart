import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    required String name,
    @JsonKey(name: 'container_weight_gram') required double containerWeightGram,
    @JsonKey(name: 'container_max_weight_gram') required double containerMaxWeightGram,
    @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
    @JsonKey(name: 'account_id') required String accountId,
    @JsonKey(name: 'nfc_uid') String? nfcUid,
    @JsonKey(name: 'raw_weight_gram') required double rawWeightGram,
    @JsonKey(name: 'weight_gram') required double weightGram,
    @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson) DateTime? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson) DateTime? updatedAt,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
class CreateFoodRequest with _$CreateFoodRequest {
  const factory CreateFoodRequest({
    required String name,
    @JsonKey(name: 'nfc_uid') required String nfcUid,
    @JsonKey(name: 'container_weight_gram') required double containerWeightGram,
    @JsonKey(name: 'container_max_weight_gram') required double containerMaxWeightGram,
    @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
    required bool force,
  }) = _CreateFoodRequest;

  factory CreateFoodRequest.fromJson(Map<String, dynamic> json) => _$CreateFoodRequestFromJson(json);
}

@freezed
class UpdateFoodRequest with _$UpdateFoodRequest {
  const factory UpdateFoodRequest({
    required String id,
    required String name,
    @JsonKey(name: 'nfc_uid') required String nfcUid,
    @JsonKey(name: 'container_weight_gram') required double containerWeightGram,
    @JsonKey(name: 'container_max_weight_gram') required double containerMaxWeightGram,
    @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
    required bool force,
  }) = _UpdateFoodRequest;

  factory UpdateFoodRequest.fromJson(Map<String, dynamic> json) => _$UpdateFoodRequestFromJson(json);
}

@freezed
class MyFoodsResponse with _$MyFoodsResponse {
  const factory MyFoodsResponse({
    @JsonKey(name: 'foods') required List<Food> foods,
    @JsonKey(name: 'low_weight_foods') required List<Food> lowWeightFoods,
    @JsonKey(name: 'unused_foods') required List<Food> unusedFoods,
  }) = _MyFoodsResponse;

  factory MyFoodsResponse.fromJson(Map<String, dynamic> json) => _$MyFoodsResponseFromJson(json);
}

DateTime? _fromJson(String? dateString) => dateString != null ? DateTime.parse(dateString) : null;
String? _toJson(DateTime? dateTime) => dateTime?.toIso8601String();
