import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/data/data_sets.dart';
import 'package:jahez/models/restaurants_model.dart';
import 'package:jahez/widgets/home_screen_widgets/catougry_list_view.dart';
import 'package:jahez/widgets/home_screen_widgets/container_list.dart';
import 'package:jahez/widgets/home_screen_widgets/home_tags_widget.dart';
import 'package:jahez/widgets/home_screen_widgets/restaurant_container.dart';

List<Restaurant> resList = [];

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    resList = [];
    for (var element in dataSets) {
      resList.add(Restaurant.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xfffe0000),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 90,
                height: 35,
                child: Image.asset(
                  "assets/image/jahez.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(
                "assets/image/jahez copy.jpeg",
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Padding(
                padding: EdgeInsets.only(right: 25.0),
                child: HomeTagsWidget(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  ContainerList(
                    image: 'assets/image/image1.jpeg',
                  ),
                  ContainerList(
                    image: 'assets/image/banner1 _3475.jpg',
                  ),
                  ContainerList(
                    image: 'assets/image/banner2.jpg',
                  ),
                  ContainerList(
                    image: 'assets/image/banner3.jpg',
                  ),
                ],
              ),
            ),
            higth10,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  CatougryListView(
                    image: 'assets/image/image2.jpeg',
                  ),
                  CatougryListView(
                    image: 'assets/image/container2 .jpeg',
                  ),
                  CatougryListView(
                    image: 'assets/image/container3 .jpeg',
                  ),
                  CatougryListView(
                    image: 'assets/image/container5 .jpeg',
                  ),
                  CatougryListView(
                    image:
                        'assets/image/IMG_C634container 83405D8-container .jpeg',
                  ),
                  CatougryListView(
                    image:
                        'assets/image/IMG_C634container 83405D8-container .jpeg',
                  ),
                  CatougryListView(
                    image:
                        'assets/image/IMG_C634container 83405D8-container .jpeg',
                  ),
                ],
              ),
            ),
            higth20,
            Expanded(
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
                                const Divider()
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
      ),
    );
  }
}
