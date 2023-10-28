import 'package:flutter/material.dart';

class RewardsCardWidget extends StatelessWidget {
  const RewardsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.grey,
      elevation: 5,
      child: Container(
        height: 115,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Americano",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "1500 Points",
                      style: TextStyle(fontSize: 16, color: Color(0xfff3a520)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.network(
                    'https://hungerstation.com/_next/image?url=https%3A%2F%2Fimages.deliveryhero.io%2Fimage%2Fhungerstation%2Fproduct%2Fimage%2F250477%3Fwidth%3D1920&w=128&q=75',
                    width: 75,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
