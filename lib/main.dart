import 'package:flutter/material.dart';
import 'package:whats_app/Pages/chat.dart';
import 'package:whats_app/Pages/home_page.dart';
import 'package:whats_app/Pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        '/': (context) => HomePage(),
        'SettingsPage': (context) => SettingsPage(),
        'Chat': (context) => Chat()
      },
    );
  }
}
