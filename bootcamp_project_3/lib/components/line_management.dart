import 'package:bootcamp_project_3/components/myline_options.dart';
import 'package:flutter/material.dart';

class LineManagement extends StatelessWidget {
  const LineManagement({
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
                icon: Icons.access_time, text: 'Active subscriptions'),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(icon: Icons.attachment, text: 'Manage lines'),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(icon: Icons.handshake, text: 'Pay as you go'),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(
                icon: Icons.person, text: 'Delete number from accounts'),
            Divider(color: Color(0xffdddddd), thickness: 1),
            MyLineOptions(icon: Icons.cancel_outlined, text: 'Disconnect line'),
          ],
        ),
      ),
    );
  }
}
