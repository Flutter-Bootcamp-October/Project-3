import 'package:bootcamp_project_3/components/myline_options.dart';
import 'package:flutter/material.dart';

class CreditEmergency extends StatelessWidget {
  const CreditEmergency({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            MyLineOptions(
              text: 'Call me back',
              icon: Icons.phone_callback,
            ),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(
              text: 'Credit transfer',
              icon: Icons.arrow_circle_right_outlined,
            ),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(
              text: 'Request credit',
              icon: Icons.arrow_circle_left_outlined,
            ),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(
              text: 'Emergency credit',
              icon: Icons.credit_card_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
