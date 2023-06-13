
import 'package:client/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountStore = ref.watch(authStoreProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("アカウント"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("username"),
                Text(accountStore.myAccount?.username ?? "", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 16,),
                const Text("id"),
                Text(accountStore.myAccount?.id ?? "", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 16,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  accountStore.logout();
                }, child: const Text("ログアウト"))
              ],
            )
          ],
        )
      )
    );
  }
}