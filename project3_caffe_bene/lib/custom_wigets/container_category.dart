import 'package:flutter/material.dart';

class containerCategory extends StatelessWidget {
  const containerCategory({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      constraints: BoxConstraints(maxWidth: 85),
      decoration: BoxDecoration(
          color: Color(0xffe6e6e6), borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        style: TextStyle(
            color: Color(0xff6c554b),
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
