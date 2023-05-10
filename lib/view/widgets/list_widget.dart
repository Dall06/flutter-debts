import 'package:flutter/material.dart';
import 'package:flutter_debts/view/widgets/item_widget.dart';

import 'button_widget.dart';

class LoadMoreList extends StatefulWidget {
  const LoadMoreList({super.key});

  @override
  LoadMoreListState createState() => LoadMoreListState();
}

class LoadMoreListState extends State<LoadMoreList> {
  int _currentItemCount = 10;
  final int _loadMoreCount = 10;

  final List<String> _items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: height * 0.03, horizontal: width * 0.04),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(5),
      ),
        child: Expanded(
          child: ListView.builder(
            itemCount: _currentItemCount + 1, // Add 1 for the Load More button
            itemBuilder: (BuildContext context, int index) {
              if (index == _currentItemCount) {
                return _buildLoadMoreButton();
              } else {
                return const ItemWidget();
              }
            },
          ),
      ),
    );
  }

  Widget _buildLoadMoreButton() {
    return Center(
      child: Button(
        onPress: () {

          setState(() {
            _currentItemCount += _loadMoreCount;
          });
        },
        label: 'Load More', color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}
