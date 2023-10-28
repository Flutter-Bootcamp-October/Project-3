import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:flutter/material.dart';

class ExpectedTab extends StatefulWidget {
  const ExpectedTab({
    super.key,
  });

  @override
  State<ExpectedTab> createState() => _ExpectedTabState();
}

class _ExpectedTabState extends State<ExpectedTab> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        height24,
        Text(
          "حلقات للمشاهدة",
          style: whiteBold18,
        ),
        height16,
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Icon(
            Icons.arrow_back_ios_new,
            color: white,
          ),
          Text(
            "تصفية الشبكات",
            style: white18,
          )
        ]),
        height16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Switch(
                value: light,
                activeColor: white,
                onChanged: (bool value) {
                  setState(() {
                    light = value;
                  });
                }),
            Text(
              "إخفاء الحلقات المشاهدة",
              style: white18,
            ),
          ],
        ),
      ],
    );
  }
}
