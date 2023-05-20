import 'package:client/pages/add_food/add_food_page.dart';
import 'package:client/pages/food_list_page.dart';
import 'package:client/pages/initial_page.dart';
import 'package:client/pages/login_page.dart';
import 'package:client/pages/register_page.dart';
import 'package:client/pages/splash_page.dart';
import 'package:client/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider((ref) {
  final authState = ref.read(authStoreProvider);

  final router = GoRouter(
      routes: [
        GoRoute(
            path: "/register",
            pageBuilder: (context, state) {
              return const MaterialPage(child: RegisterPage());
            }),
        GoRoute(
          path: "/login",
          pageBuilder: (context, state) {
            return const MaterialPage(child: LoginPage());
          },
        ),
        GoRoute(
          path: "/splash",
          pageBuilder: (context, state) {
            return const MaterialPage(child: InitialLoadingPage());
          },
        ),
        GoRoute(
          path: "/initial",
          pageBuilder: (context, state) {
            return const MaterialPage(child: InitialPage());
          },
        ),
        GoRoute(
          path: "/home",
          pageBuilder: (context, state) {
            return const MaterialPage(child: FoodListPage());
          },
        ),
        GoRoute(
          path: "/add-food",
          pageBuilder: (context, state) {
            return const MaterialPage(child: AddFoodPage());
          },
        )
      ],
      refreshListenable: authState,
      redirect: (context, state) {
        if (state.subloc != "/splash" &&
            authState.type == AuthStateType.loading) {
          return "/splash";
        }

        if (state.subloc != "/splash" &&
            authState.type == AuthStateType.error) {
          return "/splash";
        }

        if ((state.subloc != "/register" &&
                state.subloc != "/login" &&
                state.subloc != "/initial") &&
            authState.type == AuthStateType.unauthorized) {
          return "/initial";
        }

        if (state.subloc == "/splash" &&
            authState.type != AuthStateType.loading) {
          return "/home";
        }
        return null;
      });

  return router;
});
