///
//  Generated code. Do not modify.
//  source: proto/food.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use foodDescriptor instead')
const Food$json = const {
  '1': 'Food',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'container_weight_gram', '3': 2, '4': 1, '5': 2, '10': 'containerWeightGram'},
    const {'1': 'container_max_weight_gram', '3': 3, '4': 1, '5': 2, '10': 'containerMaxWeightGram'},
    const {'1': 'gram_per_milliliter', '3': 4, '4': 1, '5': 2, '9': 0, '10': 'gramPerMilliliter', '17': true},
    const {'1': 'account_id', '3': 6, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'nfc_uid', '3': 7, '4': 1, '5': 9, '10': 'nfcUid'},
    const {'1': 'raw_weight_gram', '3': 8, '4': 1, '5': 2, '10': 'rawWeightGram'},
    const {'1': 'weight_gram', '3': 9, '4': 1, '5': 2, '10': 'weightGram'},
    const {'1': 'created_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_gram_per_milliliter'},
  ],
};

/// Descriptor for `Food`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List foodDescriptor = $convert.base64Decode('CgRGb29kEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAUgASgJUgRuYW1lEjIKFWNvbnRhaW5lcl93ZWlnaHRfZ3JhbRgCIAEoAlITY29udGFpbmVyV2VpZ2h0R3JhbRI5Chljb250YWluZXJfbWF4X3dlaWdodF9ncmFtGAMgASgCUhZjb250YWluZXJNYXhXZWlnaHRHcmFtEjMKE2dyYW1fcGVyX21pbGxpbGl0ZXIYBCABKAJIAFIRZ3JhbVBlck1pbGxpbGl0ZXKIAQESHQoKYWNjb3VudF9pZBgGIAEoCVIJYWNjb3VudElkEhcKB25mY191aWQYByABKAlSBm5mY1VpZBImCg9yYXdfd2VpZ2h0X2dyYW0YCCABKAJSDXJhd1dlaWdodEdyYW0SHwoLd2VpZ2h0X2dyYW0YCSABKAJSCndlaWdodEdyYW0SOQoKY3JlYXRlZF9hdBgKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAsgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0QhYKFF9ncmFtX3Blcl9taWxsaWxpdGVy');
@$core.Deprecated('Use createFoodRequestDescriptor instead')
const CreateFoodRequest$json = const {
  '1': 'CreateFoodRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'nfc_uid', '3': 3, '4': 1, '5': 9, '10': 'nfcUid'},
    const {'1': 'container_weight_gram', '3': 4, '4': 1, '5': 2, '10': 'containerWeightGram'},
    const {'1': 'container_max_weight_gram', '3': 5, '4': 1, '5': 2, '10': 'containerMaxWeightGram'},
    const {'1': 'gram_per_milliliter', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'gramPerMilliliter', '17': true},
    const {'1': 'force', '3': 7, '4': 1, '5': 8, '10': 'force'},
  ],
  '8': const [
    const {'1': '_gram_per_milliliter'},
  ],
};

/// Descriptor for `CreateFoodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFoodRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVGb29kUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEh0KCmFjY291bnRfaWQYAiABKAlSCWFjY291bnRJZBIXCgduZmNfdWlkGAMgASgJUgZuZmNVaWQSMgoVY29udGFpbmVyX3dlaWdodF9ncmFtGAQgASgCUhNjb250YWluZXJXZWlnaHRHcmFtEjkKGWNvbnRhaW5lcl9tYXhfd2VpZ2h0X2dyYW0YBSABKAJSFmNvbnRhaW5lck1heFdlaWdodEdyYW0SMwoTZ3JhbV9wZXJfbWlsbGlsaXRlchgGIAEoAkgAUhFncmFtUGVyTWlsbGlsaXRlcogBARIUCgVmb3JjZRgHIAEoCFIFZm9yY2VCFgoUX2dyYW1fcGVyX21pbGxpbGl0ZXI=');
@$core.Deprecated('Use updateFoodRequestDescriptor instead')
const UpdateFoodRequest$json = const {
  '1': 'UpdateFoodRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'nfc_uid', '3': 3, '4': 1, '5': 9, '10': 'nfcUid'},
    const {'1': 'container_weight_gram', '3': 4, '4': 1, '5': 2, '10': 'containerWeightGram'},
    const {'1': 'container_max_weight_gram', '3': 5, '4': 1, '5': 2, '10': 'containerMaxWeightGram'},
    const {'1': 'gram_per_milliliter', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'gramPerMilliliter', '17': true},
    const {'1': 'force', '3': 7, '4': 1, '5': 8, '10': 'force'},
  ],
  '8': const [
    const {'1': '_gram_per_milliliter'},
  ],
};

/// Descriptor for `UpdateFoodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFoodRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVGb29kUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEh0KCmFjY291bnRfaWQYAiABKAlSCWFjY291bnRJZBIXCgduZmNfdWlkGAMgASgJUgZuZmNVaWQSMgoVY29udGFpbmVyX3dlaWdodF9ncmFtGAQgASgCUhNjb250YWluZXJXZWlnaHRHcmFtEjkKGWNvbnRhaW5lcl9tYXhfd2VpZ2h0X2dyYW0YBSABKAJSFmNvbnRhaW5lck1heFdlaWdodEdyYW0SMwoTZ3JhbV9wZXJfbWlsbGlsaXRlchgGIAEoAkgAUhFncmFtUGVyTWlsbGlsaXRlcogBARIUCgVmb3JjZRgHIAEoCFIFZm9yY2VCFgoUX2dyYW1fcGVyX21pbGxpbGl0ZXI=');
@$core.Deprecated('Use myFoodsDescriptor instead')
const MyFoods$json = const {
  '1': 'MyFoods',
  '2': const [
    const {'1': 'foods', '3': 1, '4': 3, '5': 11, '6': '.Food', '10': 'foods'},
  ],
};

/// Descriptor for `MyFoods`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myFoodsDescriptor = $convert.base64Decode('CgdNeUZvb2RzEhsKBWZvb2RzGAEgAygLMgUuRm9vZFIFZm9vZHM=');
@$core.Deprecated('Use findFoodByNfcUidRequestDescriptor instead')
const FindFoodByNfcUidRequest$json = const {
  '1': 'FindFoodByNfcUidRequest',
  '2': const [
    const {'1': 'nfc_uid', '3': 1, '4': 1, '5': 9, '10': 'nfcUid'},
  ],
};

/// Descriptor for `FindFoodByNfcUidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findFoodByNfcUidRequestDescriptor = $convert.base64Decode('ChdGaW5kRm9vZEJ5TmZjVWlkUmVxdWVzdBIXCgduZmNfdWlkGAEgASgJUgZuZmNVaWQ=');
@$core.Deprecated('Use findFoodByIdRequestDescriptor instead')
const FindFoodByIdRequest$json = const {
  '1': 'FindFoodByIdRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `FindFoodByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findFoodByIdRequestDescriptor = $convert.base64Decode('ChNGaW5kRm9vZEJ5SWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
