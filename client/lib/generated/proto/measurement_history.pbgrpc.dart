///
//  Generated code. Do not modify.
//  source: proto/measurement_history.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'measurement_history.pb.dart' as $0;
export 'measurement_history.pb.dart';

class MeasurementHistoryServiceClient extends $grpc.Client {
  static final _$recordHistory =
      $grpc.ClientMethod<$0.RecordHistoryRequest, $0.MeasurementHistory>(
          '/MeasurementHistoryService/RecordHistory',
          ($0.RecordHistoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MeasurementHistory.fromBuffer(value));

  MeasurementHistoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MeasurementHistory> recordHistory(
      $0.RecordHistoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recordHistory, request, options: options);
  }
}

abstract class MeasurementHistoryServiceBase extends $grpc.Service {
  $core.String get $name => 'MeasurementHistoryService';

  MeasurementHistoryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.RecordHistoryRequest, $0.MeasurementHistory>(
            'RecordHistory',
            recordHistory_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecordHistoryRequest.fromBuffer(value),
            ($0.MeasurementHistory value) => value.writeToBuffer()));
  }

  $async.Future<$0.MeasurementHistory> recordHistory_Pre($grpc.ServiceCall call,
      $async.Future<$0.RecordHistoryRequest> request) async {
    return recordHistory(call, await request);
  }

  $async.Future<$0.MeasurementHistory> recordHistory(
      $grpc.ServiceCall call, $0.RecordHistoryRequest request);
}
