import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatefulWidget {
  AppText(
    this.notes, {
    super.key,
    required this.titles,
    required this.textArrow,
  });
  final String titles;
  final String textArrow;
  String notes;

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.titles,
          style: whiteBold18,
        ),
        height16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.arrow_back_ios_new,
              color: white,
            ),
            Text(
              widget.textArrow,
              style: white18,
            ),
          ],
        ),
        Text(
          widget.notes,
          style: grey16,
        ),
      ],
    );
  }
}
