import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:bootcamp_project_3/components/credit_card.dart';
import 'package:bootcamp_project_3/components/custom_appbar.dart';
import 'package:bootcamp_project_3/components/recharge_button.dart';
import 'package:bootcamp_project_3/components/start_beginning_text.dart';
import 'package:bootcamp_project_3/components/start_details.dart';
import 'package:bootcamp_project_3/components/start_packages.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: staticAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 40),
            StartBeginningText(),
            RechargeButton(),
            CreditCard(),
            StartDetails(),
            SizedBox(height: 40),
            StartPackages(text: 'Data'),
            SizedBox(height: 40),
            StartPackages(text: 'Minutes'),
            SizedBox(height: 40),
            StartPackages(text: 'SMS'),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
