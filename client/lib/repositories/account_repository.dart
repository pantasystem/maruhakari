import 'package:client/generated/google/protobuf/empty.pb.dart';
import 'package:client/generated/proto/account.pbgrpc.dart';
import 'package:client/repositories/auth_repository.dart';
import 'package:grpc/grpc.dart';

class AccountRepository {
  AccountRepository({
    required this.client,
    required this.authRepository,
  });

  final AccountServiceClient client;
  final AuthRepository authRepository;

  Future<Account> create(
      {required String username, required String password}) async {
    final res = await client
        .createAccount(CreateAccountRequest(username: username, password: password));
    await authRepository.saveToken(token: res.token);
    return res.account;
  }

  Future<Account> login({required String username, required String password}) async {
    final res = await client.login(LoginRequest(username: username, password: password));
    await authRepository.saveToken(token: res.token);
    return res.account;
  }

  Future<Account> find({required String accountId}) async {
    final res = await client.find(FindUser(id: accountId),
        options: CallOptions(metadata: {
          "Authorization": "Bearer ${await authRepository.getToken()}"
        }));

    return res;
  }

  Future<FindMeResponse> findMe() async {
    final res = await client.findMe(Empty(),
        options: CallOptions(metadata: {
          "Authorization": "Bearer ${await authRepository.getToken()}"
        }));
    return res;
  }

}