import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        width16,
        Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
