import 'package:flutter/material.dart';
import 'package:jahez/screens/explore_screen.dart';
import 'package:jahez/screens/favorites_screen.dart';
import 'package:jahez/screens/home.screen.dart';
import 'package:jahez/screens/more_screen.dart';
import 'package:jahez/screens/order_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  List screensList = [
    const HomeScreen(),
    const OrderScreen(),
    const ExploreScreen(),
    const FavoitesScreen(),
    const MoreScreen()
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[selected],
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xfffe0000),
          unselectedItemColor: const Color(0xff686f78),
          unselectedLabelStyle:
              const TextStyle(color: Color(0xff697078), fontSize: 14),
          unselectedIconTheme: const IconThemeData(color: Color(0xffc2c7cd)),
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "More"),
          ]),
    );
  }
}
