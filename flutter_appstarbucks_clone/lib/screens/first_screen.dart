import 'package:flutter/material.dart';
//import 'package:flutter_appstarbucks_clone/screens/home_screen.dart';
import 'package:flutter_appstarbucks_clone/screens/navigation_bar_screen.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const BottomNavigation(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 125, 7),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/starbucks_logo.png',
            width: 60,
            height: 60,
          ),
        ],
      ) 
          ),
    );
  }
}
