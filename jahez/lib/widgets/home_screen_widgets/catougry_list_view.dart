import 'package:flutter/material.dart';

class CatougryListView extends StatelessWidget {
  const CatougryListView({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 11.0),
      child: SizedBox(
        width: 80,
        height: 70,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 110,
            ),
          ),
        ),
      ),
    );
  }
}
