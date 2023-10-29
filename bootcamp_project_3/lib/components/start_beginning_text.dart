import 'package:flutter/material.dart';

class StartBeginningText extends StatelessWidget {
  const StartBeginningText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hala,\nAbdullah. 👋',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Make life easier and recharge prepaid lines from the app!💳 Want to do it now?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
