import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:bootcamp_project_3/components/credit_emergency.dart';
import 'package:bootcamp_project_3/components/custom_appbar.dart';
import 'package:bootcamp_project_3/components/international_and_roaming.dart';
import 'package:bootcamp_project_3/components/line_info_button.dart';
import 'package:bootcamp_project_3/components/line_management.dart';
import 'package:bootcamp_project_3/components/myline_title.dart';
import 'package:bootcamp_project_3/components/other_services.dart';
import 'package:flutter/material.dart';

class MyLineScreen extends StatelessWidget {
  MyLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: staticAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            MyLineTitle(
              text: 'Line Management',
            ),
            SizedBox(height: 8),
            LineManagement(),
            SizedBox(height: 24),
            MyLineTitle(text: 'Credit & Emergency'),
            SizedBox(height: 8),
            CreditEmergency(),
            SizedBox(height: 24),
            MyLineTitle(text: 'International & Roaming'),
            SizedBox(height: 8),
            InternationalNRoaming(),
            SizedBox(height: 24),
            Text(
              'Other Services',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            OtherServices(),
            SizedBox(height: 16),
            LineInfoButton(),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
