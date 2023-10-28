import 'package:flutter/material.dart';

import 'package:yaqoot_project/Screens/usage_out_of_saudi.dart';
import 'package:yaqoot_project/Screens/usage_in_saudi.dart';

import 'package:yaqoot_project/Widgets/appbar/app_bar_usage.dart';

class Usagescreen extends StatefulWidget {
  const Usagescreen({super.key});

  @override
  State<Usagescreen> createState() => _UsagescreenState();
}

class _UsagescreenState extends State<Usagescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBarUsage(context),
          body: TabBarView(
            children: [UsageInSaudi(), UsageOutOfSaudi()],
          ),
        ),
      ),
    );
  }
}
