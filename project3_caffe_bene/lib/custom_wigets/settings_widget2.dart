import 'package:flutter/material.dart';

class settingsWidget2 extends StatelessWidget {
  const settingsWidget2({
    super.key,
    required this.Textentry1,
    required this.icon,
  });
  final String Textentry1;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Textentry1, style: const TextStyle(fontSize: 16)),
        const Spacer(),
        Icon(
          icon,
          size: 20,
        ),
      ],
    );
  }
}
