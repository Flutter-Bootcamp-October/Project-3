import 'package:flutter/material.dart';

class MyNavDestination extends StatelessWidget {
  const MyNavDestination(
      {super.key, required this.icon, required this.selectedIcon});
  final IconData icon;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
        icon: Icon(icon, color: Colors.white),
        selectedIcon: Icon(selectedIcon, color: Colors.white),
        label: "");
  }
}
