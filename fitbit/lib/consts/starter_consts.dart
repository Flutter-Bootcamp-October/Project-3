import 'package:flutter/material.dart';

//starter
const TextStyle starterLogoStyle =
    TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'System-Regular');
const TextStyle starterQouteStyle = TextStyle(
  color: Colors.black,
  fontSize: 26,
  fontFamily: 'System-Regular',
);
const ListTile starterLogo = ListTile(
  minLeadingWidth: 1,
  leading: Icon(color: Colors.black, Icons.fitbit),
  title: Align(
    alignment: Alignment(-1.2, 0),
    child: Text(
      "fitbit",
      style: starterLogoStyle,
    ),
  ),
);
const Text starterQoute = Text(
  "Take the next step twords a healthier, more active life",
  style: starterQouteStyle,
  textAlign: TextAlign.center,
);
const Text starterButton1 =
    Text('Sign in with Google', style: TextStyle(color: Colors.white));
const Text starterButton2 =
    Text('Sign in with Fitbit', style: TextStyle(color: Colors.black));
