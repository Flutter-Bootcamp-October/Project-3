import 'package:assignment/colors/app_color.dart';
import 'package:flutter/material.dart';

PreferredSize searchAppBar() {
  return const PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            prefixIcon: Icon(
              Icons.search,
            ),
            prefixIconColor: white,
            hintText: 'البحث في المسلسلات و الأفلام',
            hintStyle: TextStyle(color: white)),
      ),
    ),
  );
}
