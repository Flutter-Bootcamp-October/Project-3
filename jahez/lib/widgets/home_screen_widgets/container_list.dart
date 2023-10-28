import 'package:flutter/material.dart';

class ContainerList extends StatelessWidget {
  const ContainerList({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 350,
        height: 110,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 110,
            ),
          ),
        ),
      ),
    );
  }
}
