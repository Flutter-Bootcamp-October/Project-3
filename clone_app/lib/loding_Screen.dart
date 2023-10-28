import 'package:clone_app/Screens/pin_screen.dart';
import 'package:clone_app/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  State<LodingScreen> createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> PinScreen()),
       (route) => false);
    });
  }
  Widget build(BuildContext context) {
    return const Scaffold(body: 
    Center(child: CircularProgressIndicator(
      backgroundColor: Colors.black,
      
      strokeWidth: 7,
    ),),);
  }
}