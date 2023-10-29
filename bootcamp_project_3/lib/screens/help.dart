import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:bootcamp_project_3/components/custom_appbar.dart';
import 'package:bootcamp_project_3/components/help_options.dart';
import 'package:bootcamp_project_3/components/how_can_we.dart';
import 'package:bootcamp_project_3/components/option_items.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: staticAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            HowCanWe(),
            SizedBox(height: 24),
            OptionItems(text: 'How To'),
            OptionItems(text: 'USSD Short Codes List'),
            OptionItems(text: 'SMS Commands List'),
            OptionItems(text: 'Contact us'),
            OptionItems(text: 'Store Locator'),
            OptionItems(text: 'Complaints Management'),
            HelpOptions(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
