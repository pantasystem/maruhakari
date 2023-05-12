///
//  Generated code. Do not modify.
//  source: proto/food_template.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $2;

class FoodTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FoodTemplate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gramPerMiller', $pb.PbFieldType.OF)
    ..aOM<$2.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  FoodTemplate._() : super();
  factory FoodTemplate({
    $core.String? id,
    $core.String? name,
    $core.double? gramPerMiller,
    $2.Timestamp? createdAt,
    $2.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (gramPerMiller != null) {
      _result.gramPerMiller = gramPerMiller;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory FoodTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FoodTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FoodTemplate clone() => FoodTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FoodTemplate copyWith(void Function(FoodTemplate) updates) => super.copyWith((message) => updates(message as FoodTemplate)) as FoodTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FoodTemplate create() => FoodTemplate._();
  FoodTemplate createEmptyInstance() => create();
  static $pb.PbList<FoodTemplate> createRepeated() => $pb.PbList<FoodTemplate>();
  @$core.pragma('dart2js:noInline')
  static FoodTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FoodTemplate>(create);
  static FoodTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get gramPerMiller => $_getN(2);
  @$pb.TagNumber(4)
  set gramPerMiller($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasGramPerMiller() => $_has(2);
  @$pb.TagNumber(4)
  void clearGramPerMiller() => clearField(4);

  @$pb.TagNumber(5)
  $2.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(5)
  set createdAt($2.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(6)
  $2.Timestamp get updatedAt => $_getN(4);
  @$pb.TagNumber(6)
  set updatedAt($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureUpdatedAt() => $_ensure(4);
}

class FoodTemplateList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FoodTemplateList', createEmptyInstance: create)
    ..pc<FoodTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foodTemplates', $pb.PbFieldType.PM, subBuilder: FoodTemplate.create)
    ..hasRequiredFields = false
  ;

  FoodTemplateList._() : super();
  factory FoodTemplateList({
    $core.Iterable<FoodTemplate>? foodTemplates,
  }) {
    final _result = create();
    if (foodTemplates != null) {
      _result.foodTemplates.addAll(foodTemplates);
    }
    return _result;
  }
  factory FoodTemplateList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FoodTemplateList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FoodTemplateList clone() => FoodTemplateList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FoodTemplateList copyWith(void Function(FoodTemplateList) updates) => super.copyWith((message) => updates(message as FoodTemplateList)) as FoodTemplateList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FoodTemplateList create() => FoodTemplateList._();
  FoodTemplateList createEmptyInstance() => create();
  static $pb.PbList<FoodTemplateList> createRepeated() => $pb.PbList<FoodTemplateList>();
  @$core.pragma('dart2js:noInline')
  static FoodTemplateList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FoodTemplateList>(create);
  static FoodTemplateList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FoodTemplate> get foodTemplates => $_getList(0);
}

