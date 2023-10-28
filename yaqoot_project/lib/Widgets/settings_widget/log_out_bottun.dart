
import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class LogOutBottun extends StatelessWidget {
  const LogOutBottun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: red, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          'Log out',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 18, color: white),
        ),
      ),
    );
  }
}
