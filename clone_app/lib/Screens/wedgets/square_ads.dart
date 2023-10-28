import 'package:flutter/material.dart';

Padding SquareAds(String imagePath,double width1,double height1) {
  // Accepting imagePath as a parameter

  return Padding(
    padding: const EdgeInsets.only(right: 14),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: Colors.amber,
        width: width1,
        height: height1,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
