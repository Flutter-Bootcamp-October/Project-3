import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:bootcamp_project_3/screens/help.dart';
import 'package:bootcamp_project_3/screens/my_line.dart';
import 'package:bootcamp_project_3/screens/neqaty.dart';
import 'package:bootcamp_project_3/screens/start.dart';
import 'package:bootcamp_project_3/screens/store.dart';
import 'package:flutter/material.dart';

class NavController extends StatefulWidget {
  const NavController({super.key});

  @override
  State<NavController> createState() => _NavControllerState();
}

class _NavControllerState extends State<NavController> {
  int index = 0;
  List<Widget> widgets = [
    StartScreen(),
    MyLineScreen(),
    StoreScreen(),
    NeqatyScreen(),
    HelpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: scaffoldColor,
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        currentIndex: index,
        selectedItemColor: selectedIconColor,
        unselectedItemColor: unselectedIconColor,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time,
              ),
              label: 'START'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.charging_station_outlined,
              ),
              label: 'MY LINE'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store,
              ),
              label: 'STORE'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
              ),
              label: 'NEQATY'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_sharp,
              ),
              label: 'Help'),
        ],
      ),
      body: widgets[index],
    );
  }
}

// class _HomeState extends State<Home> {
//   int index = 0;
//   List<Widget> widgets = [
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//   Color? storeColor;
//   Color? userColor;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.grey[300],
//         selectedItemColor: Colors.orange[900],
//         currentIndex: index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'lib/icons/store-black.png',
//               color: storeColor,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'lib/icons/user.png',
//               color: userColor,
//             ),
//             label: 'Profile',
//           ),
//         ],
//         onTap: (value) {
//           index = value;
//           if (value == 0) {
//             storeColor = Color(0xffD35400);
//             userColor = Colors.grey;
//           } else if (value == 1) {
//             storeColor = Colors.grey;
//             userColor = Colors.grey;
//           } else {
//             userColor = Color(0xffD35400);
//             storeColor = Colors.grey;
//           }
//           setState(() {});
//         },
//       ),
//       body: widgets[index],
//     );
//   }
// }
