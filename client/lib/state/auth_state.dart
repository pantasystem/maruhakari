import 'package:client/providers/repositories.dart';
import 'package:client/repositories/account_repository.dart';
import 'package:client/repositories/auth_repository.dart';
import 'package:client/schema/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStore extends ChangeNotifier {
  AuthStore({required this.authRepository, required this.accountRepository});

  final AuthRepository authRepository;
  final AccountRepository accountRepository;

  AuthStateType type = AuthStateType.loading;
  Account? myAccount;

  Future<void> fetch() async {
    try {
      final result = await accountRepository.findMe();
      myAccount = result;

    } on UnimplementedError catch(_)  {
      type = AuthStateType.unauthorized;
    } catch (e) {
      type = AuthStateType.error;
    }
    notifyListeners();
  }

  Future<void> register({
    required String username,
    required String password,
  }) async {
    final res =
        await accountRepository.create(username: username, password: password);
    myAccount = res;
    type = AuthStateType.authorized;
    notifyListeners();
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    final res = await accountRepository.login(username: username, password: password);
    myAccount = res;
    type = AuthStateType.authorized;
    notifyListeners();
  }
}

enum AuthStateType {
  loading,
  authorized,
  unauthorized,
  error,
}

final authStoreProvider = ChangeNotifierProvider((ref) {
  return AuthStore(
    authRepository: ref.read(authRepositoryProvider),
    accountRepository: ref.read(accountRepositoryProvider),
  );
});
