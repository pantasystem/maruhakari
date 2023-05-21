// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Food _$$_FoodFromJson(Map<String, dynamic> json) => _$_Food(
      id: json['id'] as String,
      name: json['name'] as String,
      containerWeightGram: (json['container_weight_gram'] as num).toDouble(),
      containerMaxWeightGram:
          (json['container_max_weight_gram'] as num).toDouble(),
      gramPerMilliliter: (json['gram_per_milliliter'] as num?)?.toDouble(),
      accountId: json['account_id'] as String,
      nfcUid: json['nfc_uid'] as String,
      rawWeightGram: (json['raw_weight_gram'] as num).toDouble(),
      weightGram: (json['weight_gram'] as num).toDouble(),
      createdAt: _fromJson(json['created_at'] as String?),
      updatedAt: _fromJson(json['updated_at'] as String?),
    );

Map<String, dynamic> _$$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'container_weight_gram': instance.containerWeightGram,
      'container_max_weight_gram': instance.containerMaxWeightGram,
      'gram_per_milliliter': instance.gramPerMilliliter,
      'account_id': instance.accountId,
      'nfc_uid': instance.nfcUid,
      'raw_weight_gram': instance.rawWeightGram,
      'weight_gram': instance.weightGram,
      'created_at': _toJson(instance.createdAt),
      'updated_at': _toJson(instance.updatedAt),
    };

_$_CreateFoodRequest _$$_CreateFoodRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateFoodRequest(
      name: json['name'] as String,
      nfcUid: json['nfc_uid'] as String,
      containerWeightGram: (json['container_weight_gram'] as num).toDouble(),
      containerMaxWeightGram:
          (json['container_max_weight_gram'] as num).toDouble(),
      gramPerMilliliter: (json['gram_per_milliliter'] as num?)?.toDouble(),
      force: json['force'] as bool,
    );

Map<String, dynamic> _$$_CreateFoodRequestToJson(
        _$_CreateFoodRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nfc_uid': instance.nfcUid,
      'container_weight_gram': instance.containerWeightGram,
      'container_max_weight_gram': instance.containerMaxWeightGram,
      'gram_per_milliliter': instance.gramPerMilliliter,
      'force': instance.force,
    };

_$_UpdateFoodRequest _$$_UpdateFoodRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateFoodRequest(
      id: json['id'] as String,
      name: json['name'] as String,
      nfcUid: json['nfc_uid'] as String,
      containerWeightGram: (json['container_weight_gram'] as num).toDouble(),
      containerMaxWeightGram:
          (json['container_max_weight_gram'] as num).toDouble(),
      gramPerMilliliter: (json['gram_per_milliliter'] as num?)?.toDouble(),
      force: json['force'] as bool,
    );

Map<String, dynamic> _$$_UpdateFoodRequestToJson(
        _$_UpdateFoodRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nfc_uid': instance.nfcUid,
      'container_weight_gram': instance.containerWeightGram,
      'container_max_weight_gram': instance.containerMaxWeightGram,
      'gram_per_milliliter': instance.gramPerMilliliter,
      'force': instance.force,
    };

_$_MyFoodsResponse _$$_MyFoodsResponseFromJson(Map<String, dynamic> json) =>
    _$_MyFoodsResponse(
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      lowWeightFoods: (json['low_weight_foods'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      unusedFoods: (json['unused_foods'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyFoodsResponseToJson(_$_MyFoodsResponse instance) =>
    <String, dynamic>{
      'foods': instance.foods,
      'low_weight_foods': instance.lowWeightFoods,
      'unused_foods': instance.unusedFoods,
    };
