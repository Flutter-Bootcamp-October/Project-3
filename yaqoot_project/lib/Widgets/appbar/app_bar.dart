import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';
import 'package:yaqoot_project/Widgets/methods/bottom_sheet.dart';
final bool visibal=true;
appbar(BuildContext context,visibal) {
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
    actions: [
      Visibility(
        visible: visibal,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Icon(
                Icons.notifications_none,
                color: Color(0xff5c8c98),
                size: 30,
              ),
              Positioned(
                bottom: 25,
                left: 15,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: red,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 10,
                          color: white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
