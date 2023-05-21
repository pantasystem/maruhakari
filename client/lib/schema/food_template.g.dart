// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodTemplate _$$_FoodTemplateFromJson(Map<String, dynamic> json) =>
    _$_FoodTemplate(
      id: json['id'] as String,
      name: json['name'] as String,
      gramPerMiller: (json['gram_per_miller'] as num?)?.toDouble(),
      createdAt: _fromJson(json['created_at'] as String),
      updatedAt: _fromJson(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_FoodTemplateToJson(_$_FoodTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gram_per_miller': instance.gramPerMiller,
      'created_at': _toJson(instance.createdAt),
      'updated_at': _toJson(instance.updatedAt),
    };
