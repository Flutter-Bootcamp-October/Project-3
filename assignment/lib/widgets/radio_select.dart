import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioSelect extends StatelessWidget {
  RadioSelect({super.key, required this.text, this.color = black});
  final String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: white18,
        ),
        width16,
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    strokeAlign: BorderSide.strokeAlignOutside, color: white)),
          ),
        )
      ],
    );
  }
}
