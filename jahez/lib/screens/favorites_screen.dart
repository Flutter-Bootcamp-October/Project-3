import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/screens/home.screen.dart';
import 'package:jahez/widgets/favorite_screen_widget/favorite_order.dart';
import 'package:jahez/widgets/home_screen_widgets/restaurant_container.dart';

class FavoitesScreen extends StatelessWidget {
  const FavoitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Favoirtes",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              color: const Color(0xfffbfbfb),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Favoirte Orders(2)",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 8, bottom: 8, right: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      FavoirteOrder(
                        name: 'ULB - الب"',
                        price: 'SAR 100.00',
                        image: "assets/image/ULB.jpeg",
                      ),
                      width10,
                      FavoirteOrder(
                        name: 'Kudu - كودو',
                        price: 'SAR 200.00',
                        image: "assets/image/kudu.png",
                      ),
                    ]),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              color: const Color(0xfffbfbfb),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Favoirte Restaurants(${resList.length})",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: resList
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              children: [
                                RestaurantContainer(
                                  restaurant: e,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8, right: 10.0),
                                  child: Divider(thickness: 0.7),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
