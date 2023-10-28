import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/screens/home_screen.dart';
import 'package:project3_caffe_bene/screens/menu_screen.dart';
import 'package:project3_caffe_bene/screens/offers_screen.dart';
import 'package:project3_caffe_bene/screens/profile_screen.dart';
import 'package:project3_caffe_bene/screens/stores_screen.dart';

class buttomNavbar extends StatefulWidget {
  const buttomNavbar({super.key});

  @override
  State<buttomNavbar> createState() => _buttomNavbarState();
}

class _buttomNavbarState extends State<buttomNavbar> {
  int Indexselected = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const OffersScreen(),
    const StoresScreen(),
    const MenuScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[Indexselected],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff6d554c),
          selectedLabelStyle: TextStyle(color: Color(0xff0a538d)),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          currentIndex: Indexselected,
          onTap: (index) {
            Indexselected = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), label: 'OFFERS'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: 'STORES'),
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'MENU'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
          ]),
    );
  }
}
