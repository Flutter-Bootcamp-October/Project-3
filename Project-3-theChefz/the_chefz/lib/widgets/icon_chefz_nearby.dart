import 'package:flutter/material.dart';

class IconChefzNearby extends StatelessWidget {
  const IconChefzNearby({super.key, required this.iconChefzNearby});
  final IconData iconChefzNearby;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfff2f2f2),
        ),
        child: Icon(
          iconChefzNearby,
          size: 18,
        ));
  }
}
