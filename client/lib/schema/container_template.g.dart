// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContainerTemplate _$$_ContainerTemplateFromJson(Map<String, dynamic> json) =>
    _$_ContainerTemplate(
      id: json['id'] as String,
      label: json['label'] as String,
      imageUrl: json['image_url'] as String,
      containerWeightGram: (json['container_weight_gram'] as num).toDouble(),
      containerMaxWeightGram:
          (json['container_max_weight_gram'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ContainerTemplateToJson(
        _$_ContainerTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'image_url': instance.imageUrl,
      'container_weight_gram': instance.containerWeightGram,
      'container_max_weight_gram': instance.containerMaxWeightGram,
    };
