import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;
  const Label({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.labelMedium?.fontSize,
        color: Theme.of(context).textTheme.labelMedium?.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
