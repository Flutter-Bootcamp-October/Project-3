import 'package:flutter/material.dart';

class ChoiceWidget extends StatefulWidget {
  ChoiceWidget({
    super.key,
  });

  @override
  State<ChoiceWidget> createState() => _ChoiceWidgetState();
}

class _ChoiceWidgetState extends State<ChoiceWidget> {
  int selectedIndex = 0;
  List menuList = ["Beverages", "Bakery and Pastry", "Gelato"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return choice(index);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }

  choice(int index) {
    return ChoiceChip(
      padding: EdgeInsets.only(top: 8, bottom: 8, right: 20, left: 20),
      backgroundColor: Color(0xff7f7f7f),
      label: Text(
        menuList[index],
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: selectedIndex == index ? Colors.white : Colors.black),
      ),
      selected: selectedIndex == index,
      selectedColor: Color(0xff6f584d),
      onSelected: (value) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
