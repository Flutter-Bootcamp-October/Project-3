import 'package:flutter/material.dart';

class HowCanWe extends StatelessWidget {
  const HowCanWe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'How can we help you?',
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
