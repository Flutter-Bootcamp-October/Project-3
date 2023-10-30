import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

PreferredSizeWidget appBarPostViewInfo(BuildContext context,
    {required String title}) {
  return AppBar(
    backgroundColor: white,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(
      title,
      style: const TextStyle(color: black),
    ),
  );
}
