import 'package:flutter/material.dart';

class PopularBrandsWidget extends StatelessWidget {
  const PopularBrandsWidget({
    super.key,
    required this.imageBrand,
    this.imageWidth = 80,
    this.imageHeight = 80,
  });
  final String imageBrand;
  final double? imageWidth;
  final double? imageHeight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 80,
        height: 80,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xfff2f2f2)),
        child: Image.asset(imageBrand),
      ),
    );
  }
}
