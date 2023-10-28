import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.grey,
      elevation: 5,
      child: Container(
        height: 145,
        width: 125,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image.network(
                'https://hungerstation.com/_next/image?url=https%3A%2F%2Fimages.deliveryhero.io%2Fimage%2Fhungerstation%2Fmenus%2Fproduct%2Fhsimg-250478%3Fwidth%3D1920&w=128&q=75',
                width: 75,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Cappuccino",
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "SAR",
                style: TextStyle(color: Color(0xfff3a520)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
