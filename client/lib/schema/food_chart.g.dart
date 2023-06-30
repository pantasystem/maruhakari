// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodChart _$$_FoodChartFromJson(Map<String, dynamic> json) => _$_FoodChart(
      records: (json['records'] as List<dynamic>)
          .map((e) => FoodChartRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      beginAt: DateTime.parse(json['begin_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
    );

Map<String, dynamic> _$$_FoodChartToJson(_$_FoodChart instance) =>
    <String, dynamic>{
      'records': instance.records,
      'begin_at': instance.beginAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
    };

_$_FoodChartRecord _$$_FoodChartRecordFromJson(Map<String, dynamic> json) =>
    _$_FoodChartRecord(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FoodChartRecordToJson(_$_FoodChartRecord instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
