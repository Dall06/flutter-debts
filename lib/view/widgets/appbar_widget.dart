import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      title: Text(title, style: Theme.of(context).textTheme.labelMedium,),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
