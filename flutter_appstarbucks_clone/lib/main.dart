import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/screens/first_screen.dart';
//import 'package:flutter_appstarbucks_clone/screens/first_screen.dart';
//import 'package:flutter_appstarbucks_clone/screens/navigation_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstScreen());
  }
}
