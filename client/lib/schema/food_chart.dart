import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_chart.freezed.dart';
part 'food_chart.g.dart';

@freezed
class FoodChart with _$FoodChart {
  const factory FoodChart({
    @JsonKey(name: "records") required List<FoodChartRecord> records,
    @JsonKey(name: "begin_at") required DateTime beginAt,
    @JsonKey(name: "end_at") required DateTime endAt,
  }) = _FoodChart;

  factory FoodChart.fromJson(Map<String, dynamic> json) =>
      _$FoodChartFromJson(json);
}

@freezed
class FoodChartRecord with _$FoodChartRecord {
  const factory FoodChartRecord({
    required double x,
    required double y,
  }) = _FoodChartRecord;

  factory FoodChartRecord.fromJson(Map<String, dynamic> json) =>
      _$FoodChartRecordFromJson(json);
}