import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height * 0.085,
      color: Theme.of(context).colorScheme.background,
      padding: EdgeInsets.symmetric(
          vertical: height * 0.01, horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(label: 'Add new', color: Theme.of(context).colorScheme.primary,),
          SizedBox(
            width: width * 0.38,
          ),
          const IconButton(
              onPressed: null,
              icon: Icon(CupertinoIcons.star_fill),
              iconSize: 26),
          IconButton(
              onPressed: null,
              icon: Icon(
                  CupertinoIcons.gear_solid,
                size: 32,
                color: Theme.of(context).colorScheme.secondary,
              ),
              iconSize: 54),
        ],
      ),
    );
  }
}
