import 'package:fitbit/widgets/notifcation_widget.dart';
import 'package:flutter/material.dart';

const Color appBarIconColor = Color(0xff57605d);
const Color appBarBackground = Color(0xffeff0ee);
const Row appBarLeading = Row(children: [
  Icon(
    size: 30,
    Icons.phone_iphone,
    color: Color(0xff57605d),
  ),
  Icon(Icons.watch, size: 20, color: Color(0xff57605d))
]);
const appBarTitle = Text("fitbit", style: TextStyle(color: Colors.black));

AppBar fitbitAppBar = AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: appBarBackground,
    leading: appBarLeading,
    title: appBarTitle,
    actions: const [
      NotifcationBubble(),
      Icon(size: 30, Icons.settings, color: Color(0xff57605d))
    ]);
