///
//  Generated code. Do not modify.
//  source: proto/food.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'food.pb.dart' as $0;
import '../google/protobuf/empty.pb.dart' as $1;
export 'food.pb.dart';

class FoodServiceClient extends $grpc.Client {
  static final _$createFood = $grpc.ClientMethod<$0.CreateFoodRequest, $0.Food>(
      '/FoodService/CreateFood',
      ($0.CreateFoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Food.fromBuffer(value));
  static final _$updateFood = $grpc.ClientMethod<$0.UpdateFoodRequest, $0.Food>(
      '/FoodService/UpdateFood',
      ($0.UpdateFoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Food.fromBuffer(value));
  static final _$findFoodByNfcUid =
      $grpc.ClientMethod<$0.FindFoodByNfcUidRequest, $0.Food>(
          '/FoodService/FindFoodByNfcUid',
          ($0.FindFoodByNfcUidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Food.fromBuffer(value));
  static final _$findFoodById =
      $grpc.ClientMethod<$0.FindFoodByIdRequest, $0.Food>(
          '/FoodService/FindFoodById',
          ($0.FindFoodByIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Food.fromBuffer(value));
  static final _$findByOwnFoods = $grpc.ClientMethod<$1.Empty, $0.MyFoods>(
      '/FoodService/FindByOwnFoods',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MyFoods.fromBuffer(value));

  FoodServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Food> createFood($0.CreateFoodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createFood, request, options: options);
  }

  $grpc.ResponseFuture<$0.Food> updateFood($0.UpdateFoodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFood, request, options: options);
  }

  $grpc.ResponseFuture<$0.Food> findFoodByNfcUid(
      $0.FindFoodByNfcUidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findFoodByNfcUid, request, options: options);
  }

  $grpc.ResponseFuture<$0.Food> findFoodById($0.FindFoodByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findFoodById, request, options: options);
  }

  $grpc.ResponseFuture<$0.MyFoods> findByOwnFoods($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findByOwnFoods, request, options: options);
  }
}

abstract class FoodServiceBase extends $grpc.Service {
  $core.String get $name => 'FoodService';

  FoodServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateFoodRequest, $0.Food>(
        'CreateFood',
        createFood_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateFoodRequest.fromBuffer(value),
        ($0.Food value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateFoodRequest, $0.Food>(
        'UpdateFood',
        updateFood_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateFoodRequest.fromBuffer(value),
        ($0.Food value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindFoodByNfcUidRequest, $0.Food>(
        'FindFoodByNfcUid',
        findFoodByNfcUid_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FindFoodByNfcUidRequest.fromBuffer(value),
        ($0.Food value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindFoodByIdRequest, $0.Food>(
        'FindFoodById',
        findFoodById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FindFoodByIdRequest.fromBuffer(value),
        ($0.Food value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.MyFoods>(
        'FindByOwnFoods',
        findByOwnFoods_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.MyFoods value) => value.writeToBuffer()));
  }

  $async.Future<$0.Food> createFood_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateFoodRequest> request) async {
    return createFood(call, await request);
  }

  $async.Future<$0.Food> updateFood_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateFoodRequest> request) async {
    return updateFood(call, await request);
  }

  $async.Future<$0.Food> findFoodByNfcUid_Pre($grpc.ServiceCall call,
      $async.Future<$0.FindFoodByNfcUidRequest> request) async {
    return findFoodByNfcUid(call, await request);
  }

  $async.Future<$0.Food> findFoodById_Pre($grpc.ServiceCall call,
      $async.Future<$0.FindFoodByIdRequest> request) async {
    return findFoodById(call, await request);
  }

  $async.Future<$0.MyFoods> findByOwnFoods_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return findByOwnFoods(call, await request);
  }

  $async.Future<$0.Food> createFood(
      $grpc.ServiceCall call, $0.CreateFoodRequest request);
  $async.Future<$0.Food> updateFood(
      $grpc.ServiceCall call, $0.UpdateFoodRequest request);
  $async.Future<$0.Food> findFoodByNfcUid(
      $grpc.ServiceCall call, $0.FindFoodByNfcUidRequest request);
  $async.Future<$0.Food> findFoodById(
      $grpc.ServiceCall call, $0.FindFoodByIdRequest request);
  $async.Future<$0.MyFoods> findByOwnFoods(
      $grpc.ServiceCall call, $1.Empty request);
}
