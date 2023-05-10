import 'package:flutter/material.dart';
import 'package:flutter_debts/config/theme.dart';

import '../view/screens/login/login_screen.dart';

abstract class AppRepository {
}

class MyApp extends StatelessWidget implements AppRepository {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MyThemes().darkTheme();

    return MaterialApp(
      title: 'Debts',
      theme: theme,
      routes: {
        '/': (context) => const LoginScreen(),
      },
    );
  }
}