import 'package:flutter/material.dart';

class HomeTagsWidget extends StatefulWidget {
  const HomeTagsWidget({super.key});

  @override
  State<HomeTagsWidget> createState() => _HomeTagsWidgetState();
}

class _HomeTagsWidgetState extends State<HomeTagsWidget> {
  List list = ["Deliver Now", "Schedule", "Reservations"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return tags(index);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }

  tags(int index) {
    return ChoiceChip(
      backgroundColor: const Color(0xffffffff),
      side: BorderSide(
        color: selectedIndex == index
            ? const Color(0xfffe1010)
            : const Color(0xffe0e3e9),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      label: Text(
        list[index],
        style: TextStyle(
            color: selectedIndex == index
                ? const Color(0xfffe1010)
                : const Color(0xff3f444a),
            fontSize: 15),
      ),
      selected: selectedIndex == index,
      selectedColor: const Color(0xfffef3f1),
      onSelected: (value) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
