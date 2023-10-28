import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.title,
    required this.visible,
    this.subtitle = '',
  });
  final String title;
  final bool visible;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 22, color: purpul, fontWeight: FontWeight.w900),
        ),
        Spacer(),
        Visibility(
          visible: visible,
          child: Text(
            subtitle,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        )
      ],
    );
  }
}
