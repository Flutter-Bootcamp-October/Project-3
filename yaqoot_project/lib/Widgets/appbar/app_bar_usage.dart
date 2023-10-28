import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/methods/bottom_sheet.dart';
import 'package:yaqoot_project/constents/colors_style.dart';


AppBarUsage(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          BottomSheet1(context);
        },
        child: const Row(
          children: [
            Text(
              '0534273456',
              style: TextStyle(
                  color: purpul, fontSize: 16, fontWeight: FontWeight.w800),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: purpul,
            )
          ],
        ),
      ),
    ),
    bottom: const TabBar(
      labelStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      indicatorWeight: 2,
      indicatorColor: purpul,
      labelColor: purpul,
      unselectedLabelColor: grey,
      tabs: [
        Tab(
          text: 'In Saudi',
        ),
        Tab(text: 'Out of Saudi'),
      ],
    ),
  );
}
