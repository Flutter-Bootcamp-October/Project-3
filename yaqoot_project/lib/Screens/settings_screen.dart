import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/appbar/app_bar.dart';
import 'package:yaqoot_project/Widgets/appbar/app_bar_store.dart';
import 'package:yaqoot_project/Widgets/settings_widget/contact_us_widget.dart';
import 'package:yaqoot_project/Widgets/settings_widget/log_out_bottun.dart';
import 'package:yaqoot_project/Widgets/settings_widget/setting_option.dart';
import 'package:yaqoot_project/constents/colors_style.dart';
import 'package:yaqoot_project/constents/fonts_style.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context,false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          children: [
            SettingOption(
              title: 'My SIM settings',
              icon: Icons.sim_card_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            SettingOption(
              title: 'Edit Profile',
              icon: Icons.settings_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            SettingOption(
              title: 'Manage Package & Promo codes',
              icon: Icons.manage_accounts_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            SettingOption(
              title: 'Terms and conditions',
              icon: Icons.file_copy_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            SettingOption(
              title: 'Privacy policy',
              icon: Icons.privacy_tip_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            SettingOption(
              title: 'App settings',
              icon: Icons.app_settings_alt_outlined,
            ),
            SizedBox(
              height: 25,
            ),
            LogOutBottun(),
            SizedBox(
              height: 12,
            ),
            Text(
              'contact us',
              style: TextStyle(fontSize: 16),
            ),
            ContactsWidget(),
            Text(
              'v7.23.0 - b23101618',
              style: font12,
            )
          ],
        ),
      ),
    );
  }
}
