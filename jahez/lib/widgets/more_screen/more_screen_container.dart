import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';

class MoreScreenContainer extends StatelessWidget {
  const MoreScreenContainer({
    super.key,
    required this.text,
    required this.icon,
    this.moreText = "",
  });

  final String text;
  final IconData icon;
  final String moreText;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xfff2f3f7)),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            width10,
            Icon(
              icon,
              color: const Color(0xfffe3b1f),
            ),
            width12,
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  color: text.contains("Logout")
                      ? const Color(0xfffe3b1f)
                      : Colors.black),
            ),
            const Spacer(),
            Text(
              moreText,
              style: const TextStyle(color: Color(0xfffe3b1f), fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
                color: Color(0xfff9a81e),
              ),
            )
          ],
        ));
  }
}
