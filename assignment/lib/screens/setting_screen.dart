import 'package:assignment/colors/app_color.dart';
import 'package:assignment/screens/account_setting_tab.dart';
import 'package:assignment/screens/app_setting_tab.dart';
import 'package:assignment/screens/expected_tab.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: black,
          bottom: const TabBar(
            tabs: [
              Text("المترقبة"),
              Text("التطبيق"),
              Text("الحساب"),
            ],
            indicatorColor: white,
          ),
        ),
        backgroundColor: black,
        body: const TabBarView(children: [
          ExpectedTab(),
          AppSettingTab(),
          AccountSettingeTab(),
        ]),
      ),
    );
  }
}
