import 'package:flutter/material.dart';
import 'package:flutter_debts/config/theme.dart';
import 'package:flutter_debts/data/local/hive.dart';
import 'package:flutter_debts/data/local/repositories/debts_repository.dart';

import '../view/screens/login/login_screen.dart';

abstract class AppRepository {
  Future<void> runApp();
}

class MyApp extends StatelessWidget implements AppRepository {
  const MyApp({super.key});

  @override
  Future<void> runApp() async {
    final db = LocalDB(dbName: 'debts_db', boxNames: {'debts'});
    final collection = await db.initCollection();

    final debtBox = collection.openBox('debts');
    final debtsRepo = DebtRepositoryImpl(debtBox: debtBox);
  }

  @override
  Widget build(BuildContext context) {
    final theme = MyThemes().darkTheme();

    return MaterialApp(
      title: 'debts',
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}