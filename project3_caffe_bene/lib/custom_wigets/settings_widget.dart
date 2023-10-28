import 'package:flutter/material.dart';

class settingsWidget extends StatelessWidget {
  const settingsWidget({
    super.key,
    required this.Textentry1,
    required this.Textentry2,
  });
  final String Textentry1;
  final String Textentry2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Textentry1,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Text(
          Textentry2,
          style: const TextStyle(fontSize: 16, color: Color(0xfff6b74e)),
        ),
      ],
    );
  }
}
