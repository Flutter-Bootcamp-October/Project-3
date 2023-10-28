import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/models/restaurants_model.dart';
import 'package:jahez/screens/restaurant_screen.dart';

class RestaurantContainer extends StatelessWidget {
  const RestaurantContainer({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RestaurantScreen(
                    restaurant: restaurant,
                  )),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              restaurant.image,
              height: 70,
              width: 70,
              fit: BoxFit.contain,
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
                    fontSize: 16,
                  ),
                ),
                higth4,
                Text(restaurant.catugry,
                    style: const TextStyle(fontSize: 14, color: Colors.grey)),
                higth8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                          color: const Color(0xfff5f2f9),
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
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff696f77),
                          size: 15,
                        ),
                        Text(
                          restaurant.distens,
                          style: const TextStyle(color: Color(0xff696f77)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
