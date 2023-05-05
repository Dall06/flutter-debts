import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String? label;

  const Input({super.key,
    this.label,
  });

  @override
  InputState createState() => InputState();
}

class InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(widget.label!),
        filled: true,
        fillColor: Theme.of(context).colorScheme.tertiary,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
