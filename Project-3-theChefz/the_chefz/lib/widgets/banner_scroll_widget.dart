import 'package:flutter/material.dart';

class BannerScrollWidget extends StatelessWidget {
  const BannerScrollWidget({super.key, required this.imageBanner});
  final String imageBanner;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageBanner,
          width: 150,
          height: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
