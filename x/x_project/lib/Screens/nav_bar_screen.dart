import 'package:flutter/material.dart';
import 'package:x_project/Screens/community_screen.dart';
import 'package:x_project/Screens/home/home_screen.dart';
import 'package:x_project/Screens/message_screen.dart';
import 'package:x_project/Screens/notification_screen.dart';
import 'package:x_project/Screens/search/search_screen.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/widgets/drawer.dart';
import 'package:x_project/widgets/my_nav_destination.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CommunityScreen(),
    const NotificationScreen(),
    const MessageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: selectedIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (index) {
          selectedIndex = index;
          setState(() {});
        },
        height: 50,
        backgroundColor: backgroundColor,
        destinations: const [
          MyNavDestination(icon: Icons.home_outlined, selectedIcon: Icons.home),
          MyNavDestination(
              icon: Icons.search_rounded, selectedIcon: Icons.search_rounded),
          MyNavDestination(
              icon: Icons.people_outline, selectedIcon: Icons.people),
          MyNavDestination(
              icon: Icons.notifications_none,
              selectedIcon: Icons.notifications),
          MyNavDestination(icon: Icons.mail_outline, selectedIcon: Icons.mail),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
