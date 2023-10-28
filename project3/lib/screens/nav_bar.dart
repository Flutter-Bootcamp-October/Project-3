import 'package:flutter/material.dart';
import 'package:project3/screens/well_being_screen.dart';
import 'package:project3/styles/custom_colors.dart';

import '../styles/custom_icons_icons.dart';
import 'appointments_screen.dart';
import 'home_screen.dart';
import 'my_family_screen.dart';
import 'my_health_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  PageController? controller = PageController();
  List<Widget> listScreens = [
    const HomeScreen(),
    const AppointmentScreen(),
    const WellBeingScreen(),
    const MyFamilyScreen(),
    const MayHealthScreeen(),
  ];
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: secondary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexSelected,
        onTap: (screenIndex) {
          indexSelected = screenIndex;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(fontSize: 10),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.home_04,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              label: "Appointments"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.heart__2_), label: "Well-being"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.people), label: "My Family"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.health__2_), label: "My Health"),
        ],
      ),
      body: listScreens[indexSelected],
    );
  }
}
