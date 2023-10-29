import 'package:flutter/material.dart';
import 'package:the_chefz/screens/home_chefz.dart';
import 'package:the_chefz/screens/orders.dart';
import 'package:the_chefz/screens/profile.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  List screensList = [
    const HomeChefzScreen(),
    const OrderScreen(),
    const ProfileScreen(),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[selected],
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedItemColor: const Color(0xff6C355C),
        unselectedItemColor: Colors.grey,
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: "Chefz",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
