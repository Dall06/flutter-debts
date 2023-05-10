import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debts/view/screens/home/widgets/section_widget.dart';
import 'package:flutter_debts/view/screens/home/widgets/status_widget.dart';

import '../../widgets/label_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Label(text: 'Status'),
          ),
          SizedBox(height: height * 0.03),
          const Status(),
          SizedBox(height: height * 0.06),
          const Align(
            alignment: Alignment.centerLeft,
            child: Label(text: 'Actions'),
          ),
          SizedBox(height: height * 0.03),
          const Section(),
          SizedBox(height: height * 0.03),
          const Section(),
        ],
      ),
    );
  }
}
