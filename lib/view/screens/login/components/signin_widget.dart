import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final VoidCallback? onPress;

  const SignIn({
    Key? key,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      child: Center(
        heightFactor: 2,
        child: Text('Sign in with google', style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
