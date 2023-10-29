import 'package:bootcamp_project_3/components/myline_options.dart';
import 'package:flutter/material.dart';

class InternationalNRoaming extends StatelessWidget {
  const InternationalNRoaming({
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
              text: 'International calling service',
              icon: Icons.location_on,
            ),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(
              text: 'Roaming service',
              icon: Icons.keyboard_control,
            ),
          ],
        ),
      ),
    );
  }
}
