import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';

class MoreList extends StatelessWidget {
  const MoreList({
    super.key,
    required this.image,
    required this.option,
  });

  final String image;
  final String option;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            option,
            style: TextStyle(
                color: AppColors.blueText, fontWeight: FontWeight.w100),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Color(0xff222222),
        ),
      ],
    );
  }
}
