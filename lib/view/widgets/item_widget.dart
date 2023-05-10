import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '1',
        style: Theme.of(context).textTheme.displaySmall,
      ),
      title: Text(
        'Select Item',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      subtitle: Text(
        'Description',
        style: Theme.of(context).textTheme.displaySmall,
      ),
      trailing: const Icon(
        CupertinoIcons.info_circle,
        size: 20,
      ),
    );
  }
}
