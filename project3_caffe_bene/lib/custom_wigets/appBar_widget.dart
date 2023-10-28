// ignore_for_file: file_names

import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget(context,
    {required bool cart, required bool back}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: Visibility(
        visible: back,
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff6c554b),
          ),
        )),
    title: Image.asset(
      'assets/caffebene_logo.png',
      // height: 55,
      width: 125,
    ),
    actions: [
      Visibility(
        visible: cart,
        child: const Icon(
          Icons.shopping_cart,
          color: Color(0xff6f584d),
        ),
      ),
      const SizedBox(
        width: 20,
      )
    ],
  );
}
