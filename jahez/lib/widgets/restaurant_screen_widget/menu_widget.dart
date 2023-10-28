import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/models/restaurants_model.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.restaurant,
    required this.index,
  });

  final Restaurant restaurant;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 226,
      width: 355,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 186,
            width: 345,
            child: Image.asset(
              restaurant.menue[index][0],
            ),
          ),
          higth10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  restaurant.menue[index][1],
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  restaurant.menue[index][2],
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
