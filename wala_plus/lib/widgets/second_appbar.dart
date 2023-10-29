import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';

class SecondAppBar extends StatelessWidget {
  const SecondAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 160,
      color: AppColors.appbar,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 42),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          height8,
          SizedBox(
            width: 360,
            child: TextField(
              cursorColor: Colors.black,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                hintText: "Enter The Search Word..",
                hintStyle: const TextStyle(
                  color: Color(0xff989898),
                  fontSize: 14,
                ),
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: AppColors.iconColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
