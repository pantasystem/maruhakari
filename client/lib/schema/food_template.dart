import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_template.freezed.dart';
part 'food_template.g.dart';

@freezed
class FoodTemplate with _$FoodTemplate {
  const factory FoodTemplate({
    required String id,
    required String name,
    @JsonKey(name: 'gram_per_miller') double? gramPerMiller,
    @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson) required DateTime createdAt,
    @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson) required DateTime updatedAt,
  }) = _FoodTemplate;

  factory FoodTemplate.fromJson(Map<String, dynamic> json) => _$FoodTemplateFromJson(json);
}

DateTime _fromJson(String dateString) => DateTime.parse(dateString);
String _toJson(DateTime dateTime) => dateTime.toIso8601String();
