import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/models/restaurants_model.dart';
import 'package:jahez/widgets/restaurant_screen_widget/first_sction.dart';
import 'package:jahez/widgets/restaurant_screen_widget/menu_widget.dart';
import 'package:jahez/widgets/restaurant_screen_widget/second_section.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    double containerHeight = 250.0 * restaurant.menue.length;

    return Scaffold(
      backgroundColor: const Color(0xfff2f3f8),
      appBar: AppBar(
        backgroundColor: const Color(0xfffe0000),
        elevation: 0,
        centerTitle: true,
        title: Align(
            alignment: Alignment.center,
            child: Text(
              restaurant.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.favorite_border_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xfffe0000)),
                height: 56,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: SizedBox(
                    height: 40,
                    width: 360,
                    child: TextField(
                        decoration: InputDecoration(
                            fillColor: const Color(0xfffafafa),
                            filled: true,
                            hintText: "Search",
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintStyle: const TextStyle(fontSize: 18),
                            prefixIcon: const Icon(Icons.search),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none))),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                higth23,
                FirstSection(restaurant: restaurant),
                higth16,
                ScondeSction(restaurant: restaurant),
                higth20,
                SizedBox(
                  width: 355,
                  height: containerHeight,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          MenuWidget(
                            restaurant: restaurant,
                            index: index,
                          ),
                      separatorBuilder: (BuildContext context, int index) =>
                          higth10,
                      itemCount: restaurant.menue.length),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
