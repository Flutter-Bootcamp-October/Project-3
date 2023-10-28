import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/consts/notifications_const.dart';
import 'package:fitbit/extentions/navigation_extentions.dart';
import 'package:flutter/material.dart';

class NotifcationScreen extends StatelessWidget {
  const NotifcationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: appBarBackground,
          appBar: AppBar(
            backgroundColor: appBarBackground,
            leading: IconButton(
                onPressed: () {
                  context.popScreen();
                },
                icon: backArrow),
            bottom: screenTabBar,
            title: title,
          ),
          body: barView),
    );
  }
}
