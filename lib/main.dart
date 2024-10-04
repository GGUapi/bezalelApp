import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'function/changeNotifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create:(context) => EmailProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      /*routes: {
        '/register': (context) => Register(),
        '/category': (context) => const Category(),
      },*/
    );
  }
}
