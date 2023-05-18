///
//  Generated code. Do not modify.
//  source: proto/food.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $2;

class Food extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Food', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerMaxWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gramPerMilliliter', $pb.PbFieldType.OF)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcUid')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weightGram', $pb.PbFieldType.OF)
    ..aOM<$2.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Food._() : super();
  factory Food({
    $core.String? id,
    $core.double? containerWeightGram,
    $core.double? containerMaxWeightGram,
    $core.double? gramPerMilliliter,
    $core.String? name,
    $core.String? accountId,
    $core.String? nfcUid,
    $core.double? rawWeightGram,
    $core.double? weightGram,
    $2.Timestamp? createdAt,
    $2.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (containerWeightGram != null) {
      _result.containerWeightGram = containerWeightGram;
    }
    if (containerMaxWeightGram != null) {
      _result.containerMaxWeightGram = containerMaxWeightGram;
    }
    if (gramPerMilliliter != null) {
      _result.gramPerMilliliter = gramPerMilliliter;
    }
    if (name != null) {
      _result.name = name;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (nfcUid != null) {
      _result.nfcUid = nfcUid;
    }
    if (rawWeightGram != null) {
      _result.rawWeightGram = rawWeightGram;
    }
    if (weightGram != null) {
      _result.weightGram = weightGram;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Food.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Food.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Food clone() => Food()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Food copyWith(void Function(Food) updates) => super.copyWith((message) => updates(message as Food)) as Food; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Food create() => Food._();
  Food createEmptyInstance() => create();
  static $pb.PbList<Food> createRepeated() => $pb.PbList<Food>();
  @$core.pragma('dart2js:noInline')
  static Food getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Food>(create);
  static Food? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get containerWeightGram => $_getN(1);
  @$pb.TagNumber(2)
  set containerWeightGram($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContainerWeightGram() => $_has(1);
  @$pb.TagNumber(2)
  void clearContainerWeightGram() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get containerMaxWeightGram => $_getN(2);
  @$pb.TagNumber(3)
  set containerMaxWeightGram($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContainerMaxWeightGram() => $_has(2);
  @$pb.TagNumber(3)
  void clearContainerMaxWeightGram() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get gramPerMilliliter => $_getN(3);
  @$pb.TagNumber(4)
  set gramPerMilliliter($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGramPerMilliliter() => $_has(3);
  @$pb.TagNumber(4)
  void clearGramPerMilliliter() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get accountId => $_getSZ(5);
  @$pb.TagNumber(6)
  set accountId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccountId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get nfcUid => $_getSZ(6);
  @$pb.TagNumber(7)
  set nfcUid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNfcUid() => $_has(6);
  @$pb.TagNumber(7)
  void clearNfcUid() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get rawWeightGram => $_getN(7);
  @$pb.TagNumber(8)
  set rawWeightGram($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRawWeightGram() => $_has(7);
  @$pb.TagNumber(8)
  void clearRawWeightGram() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get weightGram => $_getN(8);
  @$pb.TagNumber(9)
  set weightGram($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWeightGram() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeightGram() => clearField(9);

  @$pb.TagNumber(10)
  $2.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($2.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $2.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(11)
  $2.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(11)
  set updatedAt($2.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $2.Timestamp ensureUpdatedAt() => $_ensure(10);
}

class CreateFoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateFoodRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcUid')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerMaxWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gramPerMilliliter', $pb.PbFieldType.OF)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'force')
    ..hasRequiredFields = false
  ;

  CreateFoodRequest._() : super();
  factory CreateFoodRequest({
    $core.String? name,
    $core.String? nfcUid,
    $core.double? containerWeightGram,
    $core.double? containerMaxWeightGram,
    $core.double? gramPerMilliliter,
    $core.bool? force,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (nfcUid != null) {
      _result.nfcUid = nfcUid;
    }
    if (containerWeightGram != null) {
      _result.containerWeightGram = containerWeightGram;
    }
    if (containerMaxWeightGram != null) {
      _result.containerMaxWeightGram = containerMaxWeightGram;
    }
    if (gramPerMilliliter != null) {
      _result.gramPerMilliliter = gramPerMilliliter;
    }
    if (force != null) {
      _result.force = force;
    }
    return _result;
  }
  factory CreateFoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFoodRequest clone() => CreateFoodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFoodRequest copyWith(void Function(CreateFoodRequest) updates) => super.copyWith((message) => updates(message as CreateFoodRequest)) as CreateFoodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateFoodRequest create() => CreateFoodRequest._();
  CreateFoodRequest createEmptyInstance() => create();
  static $pb.PbList<CreateFoodRequest> createRepeated() => $pb.PbList<CreateFoodRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateFoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFoodRequest>(create);
  static CreateFoodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get nfcUid => $_getSZ(1);
  @$pb.TagNumber(3)
  set nfcUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNfcUid() => $_has(1);
  @$pb.TagNumber(3)
  void clearNfcUid() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get containerWeightGram => $_getN(2);
  @$pb.TagNumber(4)
  set containerWeightGram($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasContainerWeightGram() => $_has(2);
  @$pb.TagNumber(4)
  void clearContainerWeightGram() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get containerMaxWeightGram => $_getN(3);
  @$pb.TagNumber(5)
  set containerMaxWeightGram($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasContainerMaxWeightGram() => $_has(3);
  @$pb.TagNumber(5)
  void clearContainerMaxWeightGram() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get gramPerMilliliter => $_getN(4);
  @$pb.TagNumber(6)
  set gramPerMilliliter($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasGramPerMilliliter() => $_has(4);
  @$pb.TagNumber(6)
  void clearGramPerMilliliter() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get force => $_getBF(5);
  @$pb.TagNumber(7)
  set force($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasForce() => $_has(5);
  @$pb.TagNumber(7)
  void clearForce() => clearField(7);
}

class UpdateFoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateFoodRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcUid')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containerMaxWeightGram', $pb.PbFieldType.OF)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gramPerMilliliter', $pb.PbFieldType.OF)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'force')
    ..hasRequiredFields = false
  ;

  UpdateFoodRequest._() : super();
  factory UpdateFoodRequest({
    $core.String? id,
    $core.String? name,
    $core.String? nfcUid,
    $core.double? containerWeightGram,
    $core.double? containerMaxWeightGram,
    $core.double? gramPerMilliliter,
    $core.bool? force,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (nfcUid != null) {
      _result.nfcUid = nfcUid;
    }
    if (containerWeightGram != null) {
      _result.containerWeightGram = containerWeightGram;
    }
    if (containerMaxWeightGram != null) {
      _result.containerMaxWeightGram = containerMaxWeightGram;
    }
    if (gramPerMilliliter != null) {
      _result.gramPerMilliliter = gramPerMilliliter;
    }
    if (force != null) {
      _result.force = force;
    }
    return _result;
  }
  factory UpdateFoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFoodRequest clone() => UpdateFoodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFoodRequest copyWith(void Function(UpdateFoodRequest) updates) => super.copyWith((message) => updates(message as UpdateFoodRequest)) as UpdateFoodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateFoodRequest create() => UpdateFoodRequest._();
  UpdateFoodRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateFoodRequest> createRepeated() => $pb.PbList<UpdateFoodRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateFoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFoodRequest>(create);
  static UpdateFoodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nfcUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set nfcUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNfcUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearNfcUid() => clearField(3);

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

  @$pb.TagNumber(6)
  $core.double get gramPerMilliliter => $_getN(5);
  @$pb.TagNumber(6)
  set gramPerMilliliter($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGramPerMilliliter() => $_has(5);
  @$pb.TagNumber(6)
  void clearGramPerMilliliter() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get force => $_getBF(6);
  @$pb.TagNumber(7)
  set force($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasForce() => $_has(6);
  @$pb.TagNumber(7)
  void clearForce() => clearField(7);
}

class MyFoods extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyFoods', createEmptyInstance: create)
    ..pc<Food>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foods', $pb.PbFieldType.PM, subBuilder: Food.create)
    ..hasRequiredFields = false
  ;

  MyFoods._() : super();
  factory MyFoods({
    $core.Iterable<Food>? foods,
  }) {
    final _result = create();
    if (foods != null) {
      _result.foods.addAll(foods);
    }
    return _result;
  }
  factory MyFoods.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyFoods.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyFoods clone() => MyFoods()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyFoods copyWith(void Function(MyFoods) updates) => super.copyWith((message) => updates(message as MyFoods)) as MyFoods; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyFoods create() => MyFoods._();
  MyFoods createEmptyInstance() => create();
  static $pb.PbList<MyFoods> createRepeated() => $pb.PbList<MyFoods>();
  @$core.pragma('dart2js:noInline')
  static MyFoods getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyFoods>(create);
  static MyFoods? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Food> get foods => $_getList(0);
}

class FindFoodByNfcUidRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindFoodByNfcUidRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcUid')
    ..hasRequiredFields = false
  ;

  FindFoodByNfcUidRequest._() : super();
  factory FindFoodByNfcUidRequest({
    $core.String? nfcUid,
  }) {
    final _result = create();
    if (nfcUid != null) {
      _result.nfcUid = nfcUid;
    }
    return _result;
  }
  factory FindFoodByNfcUidRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindFoodByNfcUidRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindFoodByNfcUidRequest clone() => FindFoodByNfcUidRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindFoodByNfcUidRequest copyWith(void Function(FindFoodByNfcUidRequest) updates) => super.copyWith((message) => updates(message as FindFoodByNfcUidRequest)) as FindFoodByNfcUidRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindFoodByNfcUidRequest create() => FindFoodByNfcUidRequest._();
  FindFoodByNfcUidRequest createEmptyInstance() => create();
  static $pb.PbList<FindFoodByNfcUidRequest> createRepeated() => $pb.PbList<FindFoodByNfcUidRequest>();
  @$core.pragma('dart2js:noInline')
  static FindFoodByNfcUidRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindFoodByNfcUidRequest>(create);
  static FindFoodByNfcUidRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcUid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcUid() => clearField(1);
}

class FindFoodByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindFoodByIdRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  FindFoodByIdRequest._() : super();
  factory FindFoodByIdRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory FindFoodByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindFoodByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindFoodByIdRequest clone() => FindFoodByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindFoodByIdRequest copyWith(void Function(FindFoodByIdRequest) updates) => super.copyWith((message) => updates(message as FindFoodByIdRequest)) as FindFoodByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindFoodByIdRequest create() => FindFoodByIdRequest._();
  FindFoodByIdRequest createEmptyInstance() => create();
  static $pb.PbList<FindFoodByIdRequest> createRepeated() => $pb.PbList<FindFoodByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static FindFoodByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindFoodByIdRequest>(create);
  static FindFoodByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

