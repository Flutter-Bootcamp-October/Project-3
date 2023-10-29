import 'package:flutter/material.dart';
import 'package:the_chefz/data/data_set.dart';
import 'package:the_chefz/models/product_model.dart';
import 'package:the_chefz/models/resturant_model.dart';
import 'package:the_chefz/widgets/inside_detail_product.dart';

class DetailRestaurantScreen extends StatelessWidget {
  final Resturant resturant;

  const DetailRestaurantScreen({
    super.key,
    required this.resturant,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(resturant.restaurantImage),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            top: 70,
            left: 15,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.small(
                    backgroundColor: const Color(0xfffefefe),
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xff212121),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: const Color(0xfffefefe),
                          child: const Icon(Icons.favorite_border,
                              color: Color(0xff212121)),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: const Color(0xfffefefe),
                          child: const Icon(Icons.ios_share,
                              color: Color(0xff212121)),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: const Color(0xfffefefe),
                          child: const Icon(Icons.search,
                              color: Color(0xff212121)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(resturant.restaurantLogo),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    resturant.restaurantName,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xff343434)),
                                  ),
                                  Text(
                                    resturant.description,
                                    style: const TextStyle(
                                        color: Color(0xffa8a8aa)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 13),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Closed",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Icon(
                                            Icons.access_time_filled_sharp,
                                            size: 17,
                                            color: Color(0xff888b90),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text("Tomorrow"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            "Distance",
                                            style: TextStyle(
                                                color: Color(0xffa09fa5)),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Icon(
                                            Icons.delivery_dining_outlined,
                                            size: 23,
                                            color: Color(0xff888b90),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        resturant.location,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            "Rating",
                                            style: TextStyle(
                                                color: Color(0xff61344b)),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 17,
                                            color: Color(0xffbc81ad),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            resturant.rating,
                                            style: const TextStyle(
                                                color: Color(0xff785d6b),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            resturant.ratingMember,
                                            style: const TextStyle(
                                                color: Color(0xffbbaab6)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: restaurants.length,
                    itemBuilder: (context, index) => InsideDetailProduct(
                      product:
                          Product.fromJson(resturant.restaurantMenu[index]),
                      resturant: resturant,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
