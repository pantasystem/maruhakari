///
//  Generated code. Do not modify.
//  source: proto/food_template.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../google/protobuf/empty.pb.dart' as $0;
import 'food_template.pb.dart' as $1;
export 'food_template.pb.dart';

class FoodTemplateServiceClient extends $grpc.Client {
  static final _$getFoodTemplateList =
      $grpc.ClientMethod<$0.Empty, $1.FoodTemplateList>(
          '/FoodTemplateService/GetFoodTemplateList',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.FoodTemplateList.fromBuffer(value));

  FoodTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.FoodTemplateList> getFoodTemplateList(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFoodTemplateList, request, options: options);
  }
}

abstract class FoodTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'FoodTemplateService';

  FoodTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.FoodTemplateList>(
        'GetFoodTemplateList',
        getFoodTemplateList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.FoodTemplateList value) => value.writeToBuffer()));
  }

  $async.Future<$1.FoodTemplateList> getFoodTemplateList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getFoodTemplateList(call, await request);
  }

  $async.Future<$1.FoodTemplateList> getFoodTemplateList(
      $grpc.ServiceCall call, $0.Empty request);
}
