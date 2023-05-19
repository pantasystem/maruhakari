import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Text(
              "まるはかりで\n調味料の残量を管理しよう",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                TextButton(onPressed: () {
                  GoRouter.of(context).push("/login");
                }, child: const Text("ログイン")),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push("/register");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 60),
                  ),
                  child: const Text("登録して始める"),
                ),
                const SizedBox(height: 32)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
