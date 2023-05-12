///
//  Generated code. Do not modify.
//  source: proto/container_template.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ContainerTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerTemplate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerMaxWeightGram', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  ContainerTemplate._() : super();
  factory ContainerTemplate({
    $core.String? id,
    $core.String? imageUrl,
    $core.String? label,
    $core.double? containerWeightGram,
    $core.double? containerMaxWeightGram,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (label != null) {
      _result.label = label;
    }
    if (containerWeightGram != null) {
      _result.containerWeightGram = containerWeightGram;
    }
    if (containerMaxWeightGram != null) {
      _result.containerMaxWeightGram = containerMaxWeightGram;
    }
    return _result;
  }
  factory ContainerTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerTemplate clone() => ContainerTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerTemplate copyWith(void Function(ContainerTemplate) updates) => super.copyWith((message) => updates(message as ContainerTemplate)) as ContainerTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerTemplate create() => ContainerTemplate._();
  ContainerTemplate createEmptyInstance() => create();
  static $pb.PbList<ContainerTemplate> createRepeated() => $pb.PbList<ContainerTemplate>();
  @$core.pragma('dart2js:noInline')
  static ContainerTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerTemplate>(create);
  static ContainerTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImageUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get containerWeightGram => $_getN(3);
  @$pb.TagNumber(4)
  set containerWeightGram($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContainerWeightGram() => $_has(3);
  @$pb.TagNumber(4)
  void clearContainerWeightGram() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get containerMaxWeightGram => $_getN(4);
  @$pb.TagNumber(5)
  set containerMaxWeightGram($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContainerMaxWeightGram() => $_has(4);
  @$pb.TagNumber(5)
  void clearContainerMaxWeightGram() => clearField(5);
}

class ContainerTemplateList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerTemplateList', createEmptyInstance: create)
    ..pc<ContainerTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerTemplates', $pb.PbFieldType.PM, subBuilder: ContainerTemplate.create)
    ..hasRequiredFields = false
  ;

  ContainerTemplateList._() : super();
  factory ContainerTemplateList({
    $core.Iterable<ContainerTemplate>? containerTemplates,
  }) {
    final _result = create();
    if (containerTemplates != null) {
      _result.containerTemplates.addAll(containerTemplates);
    }
    return _result;
  }
  factory ContainerTemplateList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerTemplateList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerTemplateList clone() => ContainerTemplateList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerTemplateList copyWith(void Function(ContainerTemplateList) updates) => super.copyWith((message) => updates(message as ContainerTemplateList)) as ContainerTemplateList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerTemplateList create() => ContainerTemplateList._();
  ContainerTemplateList createEmptyInstance() => create();
  static $pb.PbList<ContainerTemplateList> createRepeated() => $pb.PbList<ContainerTemplateList>();
  @$core.pragma('dart2js:noInline')
  static ContainerTemplateList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerTemplateList>(create);
  static ContainerTemplateList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ContainerTemplate> get containerTemplates => $_getList(0);
}

