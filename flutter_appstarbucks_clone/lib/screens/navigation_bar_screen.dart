import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/screens/home_screen.dart';
import 'package:flutter_appstarbucks_clone/screens/scan_screen.dart';
import 'package:flutter_appstarbucks_clone/screens/stores_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    ScanScreen(),
    StoresScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: screens[selectedIndex],
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), 
                topRight: Radius.circular(20.0), 
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.1), 
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(
                      0, -3), 
                ),
              ],
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.star), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.scanner_sharp), label: "Scan"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.store_sharp), label: "Stores"),
              ],
              selectedItemColor: Color.fromARGB(255, 49, 143, 23),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
