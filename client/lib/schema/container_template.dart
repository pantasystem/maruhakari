import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_template.freezed.dart';
part 'container_template.g.dart';

@freezed
class ContainerTemplate with _$ContainerTemplate {
  const factory ContainerTemplate({
    required String id,
    required String label,
    required String imageUrl,
    required double containerWeightGram,
    required double containerMaxWeightGram,
  }) = _ContainerTemplate;

  factory ContainerTemplate.fromJson(Map<String, dynamic> json) => _$ContainerTemplateFromJson(json);
}