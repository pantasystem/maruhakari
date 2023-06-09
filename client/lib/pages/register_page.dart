import 'dart:developer';

import 'package:client/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends ConsumerState {
  final _formKey = GlobalKey<FormState>();
  final inputIdController = TextEditingController();
  final inputPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("登録"),
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
                    TextFormField(
                      controller: inputIdController,
                      decoration: const InputDecoration(label: Text("ID")),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
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
                    ref.read(authStoreProvider).register(
                      username: inputIdController.text,
                      password: inputPasswordController.text,
                    ).then((value) {
                      log('登録に成功');
                      GoRouter.of(context).go("/home");
                    }).catchError((e, st) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("登録に失敗"))
                      );
                      log('登録に失敗', error: e, stackTrace: st);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 60),
                  ),
                  child: const Text("登録"),
                ),
              ],
            ),
          ),
        )
    );
  }
}
