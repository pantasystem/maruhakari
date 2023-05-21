import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_template.freezed.dart';
part 'container_template.g.dart';

@freezed
class ContainerTemplate with _$ContainerTemplate {
  const factory ContainerTemplate({
    required String id,
    required String label,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "container_weight_gram") required double containerWeightGram,
    @JsonKey(name: "container_max_weight_gram") required double containerMaxWeightGram,
  }) = _ContainerTemplate;

  factory ContainerTemplate.fromJson(Map<String, dynamic> json) => _$ContainerTemplateFromJson(json);
}