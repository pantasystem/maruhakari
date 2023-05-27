
import 'package:client/endpoints/service.dart';
import 'package:client/providers/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientServiceProvider = Provider((ref) {
  return create(ref.read(authRepositoryProvider), baseUrl: "http://192.168.0.16:8081/");
});