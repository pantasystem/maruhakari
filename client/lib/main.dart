import 'dart:io';

import 'package:client/firebase_options.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
  if (Platform.isAndroid) {
    [
      Permission.notification,
    ].request().then((value) {
      runApp(const ProviderScope(child: MyApp()));
    });
  } else {
    runApp(const ProviderScope(child: MyApp()));
  }
}

Future<void> _onBackgroundMessage(RemoteMessage message) async {

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const RouterPage();
  }
}

class RouterPage extends ConsumerStatefulWidget {
  const RouterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return RouterPageState();
  }
}

class RouterPageState extends ConsumerState<RouterPage> {
  RouterPageState();

  @override
  void initState() {
    FirebaseMessaging.instance.onTokenRefresh.listen((event) {
      ref.read(accountRepositoryProvider).registerFcmToken(fcmToken: event);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: "Chat App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: const Color.fromARGB(0xff, 0xee, 0x02, 0x02),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            iconTheme: IconThemeData(
              color: Colors.black,
            )
          )
      ),
      routerConfig: router,

    );
  }
}
