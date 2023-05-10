import 'package:flutter/material.dart';
import 'package:flutter_debts/providers/auth_provider.dart';
import 'package:flutter_debts/providers/credentials_provider.dart';
import 'package:flutter_debts/view/widgets/button_widget.dart';
import 'package:flutter_debts/view/widgets/input_widget.dart';
import 'package:flutter_debts/view/screens/login/components/signin_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/appbar_widget.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final authState = ref.watch(authProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const MyAppBar(title: 'Welcome to debts'),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            SizedBox(height: height * 0.02),
            Input(
              label: "Email",
              onChanged: (value) {
                ref.read(credentialsProvider).email = value;
              },
            ),
            SizedBox(height: height * 0.02),
            Input(
              label: "Password",
              onChanged: (value) {
                ref.read(credentialsProvider).password = value;
              },
            ),
            SizedBox(height: height * 0.04),
            Button(
                label: 'Forgot password',
                color: Theme.of(context).colorScheme.onBackground),
            SizedBox(height: height * 0.02),
            Button(
              label: 'Continue ...',
              color: Theme.of(context).colorScheme.primary,
              onPress: () {
                ref.read(authProvider.notifier).signInWithEmailAndPassword();
              },
            ),
            SizedBox(height: height * 0.03),
            const Divider(
              thickness: 2,
            ),
            SizedBox(height: height * 0.03),
            Button(
                label: 'Register',
                color: Theme.of(context).colorScheme.onBackground),
            SizedBox(height: height * 0.02),
            const SignIn(),
            authState.when(
              loading: () => CircularProgressIndicator(),
              error: (error, stack) =>
                  Text('Oops, something unexpected happened'),
              data: (data) => Text('Hello'),
            ),
          ],
        ),
      ),
    );
  }
}
