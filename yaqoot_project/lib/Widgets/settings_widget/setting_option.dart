import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class SettingOption extends StatelessWidget {
  SettingOption({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: grey, blurRadius: 1)],
          color: white,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(
              icon,
              color: red,
              size: 30,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 18, color: purpul),
            )
          ],
        ),
      ),
    );
  }
}
