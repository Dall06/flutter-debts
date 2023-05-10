import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? label;
  final Color color;
  final VoidCallback? onPress;

  const Button({
    Key? key,
    this.onPress,
    this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      child: Center(
        heightFactor: 2,
        child: Text(label!, style: Theme.of(context).textTheme.displayLarge,),
      ),
    );
  }
}
