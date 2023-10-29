import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/text_styles.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: font16Bold,
      ),
      const Spacer(),
      Row(
        children: [
          Text(
            "Show more",
            style: TextStyle(color: AppColors.green),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.green,
          ),
        ],
      ),
    ]);
  }
}
