import 'package:flutter/material.dart';
import 'package:yaqoot_project/Screens/help_screen.dart';
import 'package:yaqoot_project/Screens/home_screen.dart';
import 'package:yaqoot_project/Screens/settings_screen.dart';
import 'package:yaqoot_project/Screens/store.dart';
import 'package:yaqoot_project/Screens/usage.dart';

import 'package:yaqoot_project/constents/colors_style.dart';

class Navigatorbar extends StatefulWidget {
  const Navigatorbar({super.key});

  @override
  State<Navigatorbar> createState() => _NavigatorbarState();
}

class _NavigatorbarState extends State<Navigatorbar> {
  List screensList = [
    const Home(),
    Usagescreen(),
    const Storescreen(),
    const Helpscreen(),
    const SettingScreen(),
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[selected],
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: red,
          unselectedItemColor: grey,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.speed_outlined), label: "Usage"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Store"),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_help_outlined), label: "Help"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Settings"),
          ]),
    );
  }
}
