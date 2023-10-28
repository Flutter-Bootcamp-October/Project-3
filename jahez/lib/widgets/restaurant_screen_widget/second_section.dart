import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/models/restaurants_model.dart';

class ScondeSction extends StatelessWidget {
  const ScondeSction({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 355,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff4e018d),
                  size: 20,
                ),
                higth4,
                Text(
                  restaurant.distens.toString(),
                  style: const TextStyle(color: Color(0xff4e018d)),
                ),
              ],
            ),
            const Center(
              child: SizedBox(
                height: 30, // Set the height of the container
                child: VerticalDivider(
                  color: Color(0xffdde0e5),
                  thickness: 3, // Set the thickness of the divider
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Color(0xff4e018d),
                  size: 20,
                ),
                higth4,
                Text(
                  "Closed at ${restaurant.time}",
                  style: const TextStyle(color: Color(0xff4e018d)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
