import 'package:flutter/material.dart';
import 'package:x_project/Screens/home/following.dart';
import 'package:x_project/Screens/home/for_you_screen.dart';
import 'package:x_project/tools/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: const Icon(
            Icons.account_circle,
            color: Color(0xffc9d4da),
            size: 30,
          ),
          title: Image.asset("images\\X_logo.png", height: 25, width: 25),
          centerTitle: true,
          bottom: const TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [Tab(text: "For You"), Tab(text: "Following")],
          ),
        ),
        backgroundColor: backgroundColor,
        body: const TabBarView(children: [ForYou(), Following()]),
      ),
    );
  }
}
