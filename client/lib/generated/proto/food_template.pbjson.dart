///
//  Generated code. Do not modify.
//  source: proto/food_template.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use foodTemplateDescriptor instead')
const FoodTemplate$json = const {
  '1': 'FoodTemplate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gram_per_miller', '3': 4, '4': 1, '5': 2, '9': 0, '10': 'gramPerMiller', '17': true},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_gram_per_miller'},
  ],
};

/// Descriptor for `FoodTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List foodTemplateDescriptor = $convert.base64Decode('CgxGb29kVGVtcGxhdGUSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAyABKAlSBG5hbWUSKwoPZ3JhbV9wZXJfbWlsbGVyGAQgASgCSABSDWdyYW1QZXJNaWxsZXKIAQESOQoKY3JlYXRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0QhIKEF9ncmFtX3Blcl9taWxsZXI=');
@$core.Deprecated('Use foodTemplateListDescriptor instead')
const FoodTemplateList$json = const {
  '1': 'FoodTemplateList',
  '2': const [
    const {'1': 'food_templates', '3': 1, '4': 3, '5': 11, '6': '.FoodTemplate', '10': 'foodTemplates'},
  ],
};

/// Descriptor for `FoodTemplateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List foodTemplateListDescriptor = $convert.base64Decode('ChBGb29kVGVtcGxhdGVMaXN0EjQKDmZvb2RfdGVtcGxhdGVzGAEgAygLMg0uRm9vZFRlbXBsYXRlUg1mb29kVGVtcGxhdGVz');
