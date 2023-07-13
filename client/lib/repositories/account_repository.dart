import 'package:client/endpoints/service.dart';
import 'package:client/repositories/auth_repository.dart';
import 'package:client/schema/account.dart';
import 'package:client/schema/handler.dart';
import 'package:client/schema/register_fcm_token_request.dart';

class AccountRepository {
  AccountRepository({
    required this.client,
    required this.authRepository,
  });

  final MaruhakariApiClient client;
  final AuthRepository authRepository;

  Future<Account> create(
      {required String username, required String password}) async {

    return handleError(() async {
      final res = await client.register(CreateAccountRequest(username: username, password: password));
      await authRepository.saveToken(token: res.token);
      return res.account;
    });
  }

  Future<Account> login({required String username, required String password}) async {
    return handleError(() async {
      final res = await client.login(LoginAccountRequest(username: username, password: password));
      await authRepository.saveToken(token: res.token);
      return res.account;
    });
  }

  Future<Account> findMe() async {
    return handleError(() async {
      final res = await client.verifyToken();
      return res;
    });
  }

  Future<void> registerFcmToken({required String fcmToken}) async {
    return handleError(() async {
      await client.registerFcmToken(RegisterFcmTokenRequest(fcmToken: fcmToken));
    });
  }

  Future<void> deleteToken({required String fcmToken}) async {
    return handleError(() async {
      await client.deleteFcmToken(fcmToken);
    });
  }
}