import 'package:flutter/material.dart';

List images = [
  'assets/orange_juice.png',
  'assets/caffebene_logo.png',
  'assets/engtea.png',
];

class homeMainContainer extends StatelessWidget {
  homeMainContainer({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8)),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
