///
//  Generated code. Do not modify.
//  source: proto/container_template.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use containerTemplateDescriptor instead')
const ContainerTemplate$json = const {
  '1': 'ContainerTemplate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'image_url', '3': 2, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'container_weight_gram', '3': 4, '4': 1, '5': 2, '10': 'containerWeightGram'},
    const {'1': 'container_max_weight_gram', '3': 5, '4': 1, '5': 2, '10': 'containerMaxWeightGram'},
  ],
};

/// Descriptor for `ContainerTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerTemplateDescriptor = $convert.base64Decode('ChFDb250YWluZXJUZW1wbGF0ZRIOCgJpZBgBIAEoCVICaWQSFAoFbGFiZWwYAyABKAlSBWxhYmVsEhsKCWltYWdlX3VybBgCIAEoCVIIaW1hZ2VVcmwSMgoVY29udGFpbmVyX3dlaWdodF9ncmFtGAQgASgCUhNjb250YWluZXJXZWlnaHRHcmFtEjkKGWNvbnRhaW5lcl9tYXhfd2VpZ2h0X2dyYW0YBSABKAJSFmNvbnRhaW5lck1heFdlaWdodEdyYW0=');
@$core.Deprecated('Use containerTemplateListDescriptor instead')
const ContainerTemplateList$json = const {
  '1': 'ContainerTemplateList',
  '2': const [
    const {'1': 'container_templates', '3': 1, '4': 3, '5': 11, '6': '.ContainerTemplate', '10': 'containerTemplates'},
  ],
};

/// Descriptor for `ContainerTemplateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerTemplateListDescriptor = $convert.base64Decode('ChVDb250YWluZXJUZW1wbGF0ZUxpc3QSQwoTY29udGFpbmVyX3RlbXBsYXRlcxgBIAMoCzISLkNvbnRhaW5lclRlbXBsYXRlUhJjb250YWluZXJUZW1wbGF0ZXM=');
