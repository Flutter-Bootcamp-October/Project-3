import 'package:flutter/material.dart';
import 'package:the_chefz/data/data_set.dart';
import 'package:the_chefz/models/resturant_model.dart';
import 'package:the_chefz/widgets/banner_scroll_widget.dart';
import 'package:the_chefz/widgets/category_food.dart';
import 'package:the_chefz/widgets/icon_chefz_nearby.dart';
import 'package:the_chefz/widgets/popular_brands_widget.dart';
import 'package:the_chefz/widgets/resturant_card.dart';

class HomeChefzScreen extends StatefulWidget {
  const HomeChefzScreen({super.key});
  @override
  State<HomeChefzScreen> createState() => _HomeChefzState();
}

class _HomeChefzState extends State<HomeChefzScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: const Color(0xff00b638),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.timer_sharp,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Now",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
        ],
        title: const InkWell(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: TextStyle(color: Color(0xff6C355C), fontSize: 15),
                ),
                Text(
                  '4061 badra 8243 milk',
                  style: TextStyle(
                    color: Color(0xff6C355C),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottom: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff6C355C),
                  ),
                  hintText: "Search for Dishe, Restaurants and Reservations",
                  hintStyle:
                      const TextStyle(color: Color(0xffb4b4b4), fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  filled: true,
                  fillColor: (Colors.grey[300])),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Popular Brands",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularBrandsWidget(
                    imageBrand: "assets/images/mcdonalds.png",
                    imageWidth: 100,
                    imageHeight: 100,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/Albaik_logo.png",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/MaMaNoura.png",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/DunkinDonuts.png",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/Domino'sPizza.png",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/HerfyFood.png",
                    imageWidth: 20,
                    imageHeight: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/mrbeastBurger.png",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  PopularBrandsWidget(
                    imageBrand: "assets/images/baskinR.png",
                    imageWidth: 20,
                    imageHeight: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BannerScrollWidget(
                    imageBanner: 'assets/images/banner1.jpg',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  BannerScrollWidget(
                    imageBanner: 'assets/images/banner2.jpg',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  BannerScrollWidget(
                    imageBanner: 'assets/images/banner3.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Chefz Nearby",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Spacer(),
                Row(
                  children: [
                    const IconChefzNearby(
                      iconChefzNearby: Icons.search,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const IconChefzNearby(
                      iconChefzNearby: Icons.favorite_border,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff2f2f2),
                      ),
                      child: Image.asset(
                        "assets/images/filter.png",
                        width: 18,
                        height: 18,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryFood(
                    categoryImage: "assets/images/burgerGathering.png",
                    categoryName: "Gathering",
                    paddingNum: 10),
                SizedBox(
                  width: 12,
                ),
                CategoryFood(
                    categoryImage: "assets/images/coffee.png",
                    categoryName: 'Coffee',
                    paddingNum: 6),
                SizedBox(
                  width: 12,
                ),
                CategoryFood(
                    categoryImage: "assets/images/saudi.png",
                    categoryName: "Saudi",
                    paddingNum: 6),
                SizedBox(
                  width: 12,
                ),
                CategoryFood(
                    categoryImage: "assets/images/healthy.png",
                    categoryName: "Healthy",
                    paddingNum: 6),
                SizedBox(
                  width: 12,
                ),
                CategoryFood(
                    categoryImage: "assets/images/all.png",
                    categoryName: "All",
                    paddingNum: 6)
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (context, index) => ResturantCard(
                    resturant: Resturant.fromJson(restaurants[index])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
