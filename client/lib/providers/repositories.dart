import 'package:client/providers/endpoint.dart';
import 'package:client/repositories/account_repository.dart';
import 'package:client/repositories/auth_repository.dart';
import 'package:client/repositories/container_template_repository.dart';
import 'package:client/repositories/food_repository.dart';
import 'package:client/repositories/food_template_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authRepositoryProvider = Provider((ref) {
  return AuthRepository();
});

final accountRepositoryProvider = Provider((ref) {
  return AccountRepository(
    client: ref.read(apiClientServiceProvider),
    authRepository: ref.read(authRepositoryProvider),
  );
});

final foodTemplateRepository = Provider((ref) {
  return FoodTemplateRepository(client: ref.read(apiClientServiceProvider));
});

final containerTemplateRepository = Provider((ref) {
  return ContainerTemplateRepository(client: ref.read(apiClientServiceProvider));
});

final foodRepository = Provider((ref) {
  return FoodRepository(client: ref.read(apiClientServiceProvider));
});