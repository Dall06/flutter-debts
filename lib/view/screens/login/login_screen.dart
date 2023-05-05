import 'package:flutter/material.dart';
import 'package:flutter_debts/view/widgets/input_widget.dart';
import 'package:flutter_debts/view/widgets/label_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Label(text: 'Login'),
            ),
            SizedBox(height: height * 0.02),
            const Input(label: "email"),
            SizedBox(height: height * 0.02),
            const Input(label: "password"),
            const Divider(),
            SizedBox(height: height * 0.04),
          ],
        ),
      ),
    );
  }
}
