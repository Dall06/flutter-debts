import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String? label;
  final void Function(String)? onChanged;

  const Input({super.key,
    this.label,
    required this.onChanged,
  });

  @override
  InputState createState() => InputState();
}

class InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(widget.label!, style: Theme.of(context).textTheme.displayLarge,),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onSurface,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
      style: Theme.of(context).textTheme.displaySmall,
      onChanged: widget.onChanged,
    );
  }
}
