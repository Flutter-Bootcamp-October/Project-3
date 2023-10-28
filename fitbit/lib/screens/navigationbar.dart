import 'package:fitbit/screens/coach_screen.dart';
import 'package:fitbit/screens/today_screen.dart';
import 'package:fitbit/screens/you_screen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selected = 0;
  Color selectedColor = const Color(0xff454f5e);
  Color unselectedColor = const Color(0xff999999);
  List<Widget> list = [
    const TodayScreen(),
    const CoachScreen(),
    const YouScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[selected],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: unselectedColor,
          selectedItemColor: selectedColor,
          selectedIconTheme: IconThemeData(color: selectedColor),
          currentIndex: selected,
          onTap: (index) {
            selected = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                label: "Today", icon: Icon(size: 30, Icons.sunny)),
            BottomNavigationBarItem(
                label: "Coach", icon: Icon(size: 30, Icons.list_alt)),
            BottomNavigationBarItem(
                label: "You", icon: Icon(size: 30, Icons.crop_square_sharp)),
          ]),
    );
  }
}
