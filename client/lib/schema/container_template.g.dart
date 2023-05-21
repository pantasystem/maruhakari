// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContainerTemplate _$$_ContainerTemplateFromJson(Map<String, dynamic> json) =>
    _$_ContainerTemplate(
      id: json['id'] as String,
      label: json['label'] as String,
      imageUrl: json['imageUrl'] as String,
      containerWeightGram: (json['containerWeightGram'] as num).toDouble(),
      containerMaxWeightGram:
          (json['containerMaxWeightGram'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ContainerTemplateToJson(
        _$_ContainerTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'imageUrl': instance.imageUrl,
      'containerWeightGram': instance.containerWeightGram,
      'containerMaxWeightGram': instance.containerMaxWeightGram,
    };
