import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

staticAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: scaffoldColor,
    leadingWidth: 200,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            '0544539726',
            style: TextStyle(
                color: Color(0xff868c95),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: AppBarIconColor,
              size: 24,
            ),
          ),
        ],
      ),
    ),
    actions: [
      Icon(
        Icons.search,
        color: AppBarIconColor,
        size: 32,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Icon(
          Icons.notifications,
          color: AppBarIconColor,
          size: 32,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          right: 8,
          left: 8,
        ),
        child: Icon(
          Icons.person,
          color: AppBarIconColor,
          size: 32,
        ),
      ),
    ],
  );
}
