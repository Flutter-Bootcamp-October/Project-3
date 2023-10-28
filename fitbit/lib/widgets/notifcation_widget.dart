import 'package:fitbit/extentions/navigation_extentions.dart';
import 'package:fitbit/screens/notifcation_screen.dart';
import 'package:flutter/material.dart';

class NotifcationBubble extends StatelessWidget {
  const NotifcationBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: const Icon(Icons.messenger_outline_outlined),
      color: const Color(0xff57605d),
      onPressed: () {
        context.pushScreen(const NotifcationScreen());
      }, //notifcation page
    );
  }
}