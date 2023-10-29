import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/screens/bravo_screen.dart';
import 'package:wala_plus/screens/home_screen.dart';
import 'package:wala_plus/screens/more_screen.dart';
import 'package:wala_plus/screens/near_you_screen.dart';
import 'package:wala_plus/screens/shopping_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation> {
  List<Widget> listScreen = [
    const HomeScreen(),
    const NearYouScreen(),
    const ShoppingScreen(),
    const BravoScreen(),
    const MoreScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.green,
        unselectedItemColor: Color(0xff738887),
        unselectedLabelStyle: TextStyle(color: Color(0xff738887)),
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: "Near you"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Bravo"),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: "More",
          ),
        ],
      ),
      body: listScreen[selectedIndex],
    );
  }
}
