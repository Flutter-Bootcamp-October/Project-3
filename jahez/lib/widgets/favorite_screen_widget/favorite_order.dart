import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';

class FavoirteOrder extends StatelessWidget {
  const FavoirteOrder({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffeceef2)),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: 67,
                width: 67,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    price,
                    style: const TextStyle(color: Color(0xffb2bcc7)),
                  ),
                  higth4,
                  ClipOval(
                      child: Image.asset(
                    "assets/image/images.jpeg",
                    height: 20,
                    width: 20,
                    fit: BoxFit.fill,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
