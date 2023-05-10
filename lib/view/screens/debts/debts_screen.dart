import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debts/view/widgets/list_widget.dart';

import '../../widgets/dropdown_widget.dart';
import '../../widgets/label_widget.dart';

class DebtsScreen extends StatelessWidget {
  const DebtsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Label(text: 'Debts'),
              SizedBox(width: width * 0.35),
              MyDropDown()
            ],
          ),
          SizedBox(height: height * 0.03),
          SizedBox(
            height: height * 0.65,
              child: const LoadMoreList()),
        ],
      ),
    );
  }
}
