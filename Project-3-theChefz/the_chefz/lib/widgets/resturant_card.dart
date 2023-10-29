// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:the_chefz/models/resturant_model.dart';
import 'package:the_chefz/screens/detail_restaurant_screen.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;

  const ResturantCard({Key? key, required this.resturant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailRestaurantScreen(resturant: resturant),
          )),
      child: Stack(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset(
                  resturant.restaurantImage,
                  width: 500,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(resturant.restaurantLogo)),
                  title: Text(
                    resturant.restaurantName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff3c3c3c)),
                  ),
                  subtitle: Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Color(0xff494949),
                            size: 20,
                          ),
                          Text(
                            resturant.location,
                            style: const TextStyle(color: Color(0xff2c2c2c)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffc395b8),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Text(
                            resturant.rating,
                            style: const TextStyle(color: Color(0xff4e2942)),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Text(
                            resturant.ratingMember,
                            style: const TextStyle(color: Color(0xff848484)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 55,
            right: 12,
            child: CircleAvatar(
              child: Image.asset(
                "assets/images/DeliveryOfferImage.png",
              ),
            ),
          ),
          const Positioned(
              left: 315,
              top: 10,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          Positioned(
            bottom: 146,
            left: 12,
            child: Image.asset(
              "assets/images/promoted.jpg",
              width: 80,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
