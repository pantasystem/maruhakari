///
//  Generated code. Do not modify.
//  source: proto/measurement_history.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $1;

class RecordHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordHistoryRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcUid')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  RecordHistoryRequest._() : super();
  factory RecordHistoryRequest({
    $core.String? deviceToken,
    $core.String? nfcUid,
    $core.double? weight,
  }) {
    final _result = create();
    if (deviceToken != null) {
      _result.deviceToken = deviceToken;
    }
    if (nfcUid != null) {
      _result.nfcUid = nfcUid;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory RecordHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordHistoryRequest clone() => RecordHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordHistoryRequest copyWith(void Function(RecordHistoryRequest) updates) => super.copyWith((message) => updates(message as RecordHistoryRequest)) as RecordHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordHistoryRequest create() => RecordHistoryRequest._();
  RecordHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<RecordHistoryRequest> createRepeated() => $pb.PbList<RecordHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static RecordHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordHistoryRequest>(create);
  static RecordHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nfcUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set nfcUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNfcUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearNfcUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get weight => $_getN(2);
  @$pb.TagNumber(3)
  set weight($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeight() => clearField(3);
}

class MeasurementHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MeasurementHistory', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foodId')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OF)
    ..aOM<$1.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MeasurementHistory._() : super();
  factory MeasurementHistory({
    $fixnum.Int64? id,
    $core.String? foodId,
    $core.double? weight,
    $1.Timestamp? createdAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (foodId != null) {
      _result.foodId = foodId;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory MeasurementHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeasurementHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeasurementHistory clone() => MeasurementHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeasurementHistory copyWith(void Function(MeasurementHistory) updates) => super.copyWith((message) => updates(message as MeasurementHistory)) as MeasurementHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MeasurementHistory create() => MeasurementHistory._();
  MeasurementHistory createEmptyInstance() => create();
  static $pb.PbList<MeasurementHistory> createRepeated() => $pb.PbList<MeasurementHistory>();
  @$core.pragma('dart2js:noInline')
  static MeasurementHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MeasurementHistory>(create);
  static MeasurementHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get foodId => $_getSZ(1);
  @$pb.TagNumber(2)
  set foodId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFoodId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFoodId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get weight => $_getN(2);
  @$pb.TagNumber(3)
  set weight($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeight() => clearField(3);

  @$pb.TagNumber(7)
  $1.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(7)
  set createdAt($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureCreatedAt() => $_ensure(3);
}

