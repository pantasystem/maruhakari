import 'package:client/generated/proto/account.pb.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/repositories/account_repository.dart';
import 'package:client/repositories/auth_repository.dart';
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
      final state = result.authState;
      switch (state) {
        case AuthState.AUTHENTICATED:
          type = AuthStateType.authorized;
          myAccount = result.account;
          break;
        case AuthState.UNAUTHENTICATED:
          type = AuthStateType.unauthorized;
          break;
      }
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
