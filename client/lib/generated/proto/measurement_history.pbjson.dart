///
//  Generated code. Do not modify.
//  source: proto/measurement_history.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recordHistoryRequestDescriptor instead')
const RecordHistoryRequest$json = const {
  '1': 'RecordHistoryRequest',
  '2': const [
    const {'1': 'device_token', '3': 1, '4': 1, '5': 9, '10': 'deviceToken'},
    const {'1': 'nfc_uid', '3': 2, '4': 1, '5': 9, '10': 'nfcUid'},
    const {'1': 'weight', '3': 3, '4': 1, '5': 2, '10': 'weight'},
  ],
};

/// Descriptor for `RecordHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordHistoryRequestDescriptor = $convert.base64Decode('ChRSZWNvcmRIaXN0b3J5UmVxdWVzdBIhCgxkZXZpY2VfdG9rZW4YASABKAlSC2RldmljZVRva2VuEhcKB25mY191aWQYAiABKAlSBm5mY1VpZBIWCgZ3ZWlnaHQYAyABKAJSBndlaWdodA==');
@$core.Deprecated('Use measurementHistoryDescriptor instead')
const MeasurementHistory$json = const {
  '1': 'MeasurementHistory',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'food_id', '3': 2, '4': 1, '5': 9, '10': 'foodId'},
    const {'1': 'weight', '3': 3, '4': 1, '5': 2, '10': 'weight'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `MeasurementHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List measurementHistoryDescriptor = $convert.base64Decode('ChJNZWFzdXJlbWVudEhpc3RvcnkSDgoCaWQYASABKAlSAmlkEhcKB2Zvb2RfaWQYAiABKAlSBmZvb2RJZBIWCgZ3ZWlnaHQYAyABKAJSBndlaWdodBI5CgpjcmVhdGVkX2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0');
