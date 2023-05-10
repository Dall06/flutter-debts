import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.12,
      width: width,
      padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width* 0.04),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My debts', style: Theme.of(context).textTheme.labelSmall),
              SizedBox(height: height * 0.01,),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Check your current debts', style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                  SizedBox(width: width * 0.01,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3/10', style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: width * 0.25,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(
                  CupertinoIcons.arrowtriangle_right
              ),
            ],
          )
        ],
      ),
    );
  }
}
