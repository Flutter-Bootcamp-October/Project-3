import 'package:bootcamp_project_3/screens/nav_controller.dart';
import 'package:bootcamp_project_3/screens/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignIn(),
    );
  }
}
