import 'package:bootcamp_project_3/components/myline_options.dart';
import 'package:flutter/material.dart';

class OtherServices extends StatelessWidget {
  const OtherServices({
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
              text: ' Device insallments',
              icon: Icons.phone_android,
            ),
          ],
        ),
      ),
    );
  }
}
