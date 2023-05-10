import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debts/view/widgets/dropdown_widget.dart';
import 'package:flutter_debts/view/widgets/list_widget.dart';

import '../../widgets/label_widget.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

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
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Label(text: 'Payments'),
                SizedBox(width: width * 0.06),
                MyDropDown()
              ],
            ),
          ),
          SizedBox(height: height * 0.03),
          const Align(
            alignment: Alignment.centerLeft,
            child: Label(text: 'Items'),
          ),
          SizedBox(height: height * 0.03),
          LoadMoreList(),
        ],
      ),
    );
  }
}
