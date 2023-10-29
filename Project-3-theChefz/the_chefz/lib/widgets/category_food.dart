import 'package:flutter/material.dart';

class CategoryFood extends StatelessWidget {
  const CategoryFood(
      {super.key,
      required this.categoryImage,
      required this.categoryName,
      required this.paddingNum});

  final String categoryImage;
  final String categoryName;
  final double paddingNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(paddingNum),
          width: 60,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xfff2f2f2)),
          child: Image.asset(categoryImage),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          categoryName,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
