import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartPackages extends StatelessWidget {
  StartPackages({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: 4,
              ),
            ],
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          top: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    'You\'re not subscribed to\n any package',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: whiteTextNIconColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
