import 'dart:io';

import 'package:client/generated/proto/account.pbgrpc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';


final channelProvider = Provider((ref) {
  return ClientChannel(() {
    if (Platform.isAndroid) {
      return '10.0.2.2';
    }
    return 'localhost';
  }(),
      port: 8081,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ));
});

final accountClientProvider = Provider((ref) {
  return AccountServiceClient(ref.read(channelProvider));
});
