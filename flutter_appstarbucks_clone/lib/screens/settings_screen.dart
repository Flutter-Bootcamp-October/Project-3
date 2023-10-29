import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/screens/personal_info_screen.dart';
import 'package:flutter_appstarbucks_clone/widgets/custom_settings.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      body: ListView(
        children: <Widget>[
          BuildSettingItem(
            text: 'Account',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            textColor: Colors.black,
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonalInfoScreen(),
                ),
              );
            },
            child: BuildSettingItem(
                text: 'Personal Info', iconData: Icons.arrow_right_sharp),
          ),
          BuildSettingItem(
              text: 'Email Setting', iconData: Icons.arrow_right_sharp),
          BuildSettingItem(
              text: 'Transaction History', iconData: Icons.arrow_right_sharp),
          BuildSettingItem(
            text: 'Security',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            textColor: Colors.black,
          ),
          BuildSettingItem(
              text:
                  'Passcode                                                         off',
              iconData: Icons.arrow_right_sharp),
          BuildSettingItem(
            text: 'Notification Preferences',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            textColor: Colors.black,
          ),
          BuildSettingItem(
              text: 'Inbox messages', iconData: Icons.arrow_right_sharp),
          BuildSettingItem(
              text: 'Setting 8', iconData: Icons.switch_right_outlined),
          BuildSettingItem(
            text: 'Contact us&Policies',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            textColor: Colors.black,
          ),
          BuildSettingItem(text: 'Contact Us', iconData: Icons.circle_sharp),
          BuildSettingItem(text: 'Terms of Use', iconData: Icons.padding),
          BuildSettingItem(
              text: 'Privacy Statement', iconData: Icons.lock_outline),
          BuildSettingItem(text: 'TRUSTe', iconData: Icons.lock_outline),
          BuildSettingItem(
              text: 'Analytice', iconData: Icons.arrow_right_alt_sharp),
          BuildSettingItem(
              text: 'Delete Account', iconData: Icons.arrow_right_alt_sharp),
         
          ListTile(
            title: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: Center(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(width: 10),
          Text(
            '   v8.1.0(24)ⓒ 2023 Starbucks Corporation',
            style: TextStyle(
              color: Colors.grey[700], 
            ),
          ),
        ],
      ),
    );
  }
}
