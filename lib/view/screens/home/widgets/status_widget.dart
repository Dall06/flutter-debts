import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.2,
      width: width,
      padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width* 0.04),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Jane Doe', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          SizedBox(height: height * 0.04,),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Main Bank Reference', style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: height * 0.01,),
                  Text('8494002948929019', style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
              SizedBox(width: width * 0.05,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Debts', style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: height * 0.01,),
                  Text('3/10', style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
              SizedBox(width: width * 0.03,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payments', style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: height * 0.01,),
                  Text('4/8', style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
