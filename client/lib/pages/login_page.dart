import 'dart:developer';

import 'package:client/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends ConsumerState {
  final _formKey = GlobalKey<FormState>();
  final inputIdController = TextEditingController();
  final inputPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextField(
                    controller: inputIdController,
                    decoration: const InputDecoration(label: Text("ID")),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: inputPasswordController,
                    decoration: const InputDecoration(
                      label: Text("パスワード"),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  ref.read(authStoreProvider).login(
                      username: inputIdController.text,
                    password: inputPasswordController.text,
                  ).then((value) {
                    log('ログインに成功');
                    // GoRouter.of(context).push("/home");
                  }).catchError((e, st) {
                    log('ログインに失敗', error: e, stackTrace: st);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("ログインに失敗"))
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 60),
                ),
                child: const Text("ログイン"),
              ),
            ],
          ),
        ),
      )
    );
  }
}
