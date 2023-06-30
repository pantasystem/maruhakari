// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodChart _$$_FoodChartFromJson(Map<String, dynamic> json) => _$_FoodChart(
      records: (json['records'] as List<dynamic>)
          .map((e) => FoodChartRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      beginAt: DateTime.parse(json['beginAt'] as String),
      endAt: DateTime.parse(json['endAt'] as String),
    );

Map<String, dynamic> _$$_FoodChartToJson(_$_FoodChart instance) =>
    <String, dynamic>{
      'records': instance.records,
      'beginAt': instance.beginAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
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
