import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
    required this.image,
    required this.name,
    required this.number,
  });
  final String image;
  final String name;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.white),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(
              number,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff571c40)),
            )
          ],
        ),
      ]),
    );
  }
}
