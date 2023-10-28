import 'package:flutter/material.dart';
import 'package:jahez/screens/navigation_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Lato'),
        home: const NavigationBarScreen());
  }
}
