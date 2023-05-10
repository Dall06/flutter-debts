import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  MyDropDown({Key? key}) : super(key: key);

  final List<String> items = [
    'Favourites',
    'Newest',
    'Oldest',
    'Finished',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 50,
      child: DropdownButtonHideUnderline(
          child: DropdownButton2(
        value: selectedValue,
        isExpanded: true,
        onChanged: (value) {},
        hint: Row(children: [
          Expanded(
              child: Text(
            'Select Item',
            style: Theme.of(context).textTheme.displaySmall,
            overflow: TextOverflow.ellipsis,
          ))
        ]),
        items: items.map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(item,
                    style: Theme.of(context).textTheme.displaySmall,
                    overflow: TextOverflow.ellipsis))).toList(),
        buttonStyleData: ButtonStyleData(
          height: height * 0.3,
          width: width * 0.4,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          elevation: 0,
        ),
        iconStyleData: IconStyleData(
          icon: const Icon(
            Icons.list,
          ),
          iconSize: 28,
          iconEnabledColor: Theme.of(context).colorScheme.secondary,
        ),
        dropdownStyleData: DropdownStyleData(
            maxHeight: height,
            width: width * 0.4,
            padding: null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).colorScheme.tertiary,
            ),
            elevation: 0,
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(5),
              thickness: MaterialStateProperty.all(6),
              thumbVisibility: MaterialStateProperty.all(true),
            )),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      )),
    );
  }
}
