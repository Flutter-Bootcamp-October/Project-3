import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/models/restaurants_model.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              restaurant.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        width10,
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              higth4,
              Text(restaurant.catugry,
                  style: const TextStyle(fontSize: 16, color: Colors.grey)),
              higth4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 90,
                    decoration: BoxDecoration(
                        color: const Color(0xffeae7f2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.car_repair,
                            color: Color(0xff580396),
                            size: 20,
                          ),
                          Text(
                            " ${restaurant.price} Riyal",
                            style: const TextStyle(color: Color(0xff580396)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
