import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/data/data.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
        height: 38,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return choice(index);
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 8,
          ),
        ),
      ),
    );
  }

  choice(int index) {
    return ChoiceChip(
      shape: const StadiumBorder(side: BorderSide(color: appBarIconColor)),
      backgroundColor: appBarBackground,
      label: Row(
        children: [
          Icon(coachScreenButtons[index]["icon"],
              size: 15, color: const Color(0xff007a81)),
          const SizedBox(width: 3),
          Text(
            coachScreenButtons[index]["text"],
            style: const TextStyle(color: Color(0xff007a81)),
          ),
        ],
      ),
      selected: selectedIndex == index,
      selectedColor: const Color(0xffcce7df),
      onSelected: (value) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
