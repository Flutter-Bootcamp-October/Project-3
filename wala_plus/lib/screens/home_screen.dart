import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/widgets/horisintal_offers.dart';
import 'package:wala_plus/widgets/main_appbar.dart';
import 'package:wala_plus/widgets/shop_item_vertical.dart';
import 'package:wala_plus/widgets/text_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const MainAppBar(),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 400,
                    child: Image.asset(
                      "assets/img/aromatic.JPG",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 400,
                    child: Image.asset(
                      "assets/img/barira.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 400,
                    child: Image.asset(
                      "assets/img/bfit.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              color: AppColors.white,
              child: const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ShopItemVertical(
                          image: "assets/img/shop_online.png",
                          shopName: "Shop Online",
                        ),
                        ShopItemVertical(
                          image: "assets/img/gym.png",
                          shopName: "Fitness",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ShopItemVertical(
                          image: "assets/img/resttaurants.png",
                          shopName: "Restaurants",
                        ),
                        ShopItemVertical(
                          image: "assets/img/shopping.jpeg",
                          shopName: "Shopping",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ShopItemVertical(
                          image: "assets/img/drink.png",
                          shopName: "Cafe & Drinnks",
                        ),
                        ShopItemVertical(
                          image: "assets/img/entertaainment.png",
                          shopName: "Entertainment",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ShopItemVertical(
                          image: "assets/img/sweet.png",
                          shopName: "Sweets & Bakery",
                        ),
                        ShopItemVertical(
                          image: "assets/img/more.png",
                          shopName: "All Sections",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextHeader(
                title: "Top WalaPlus Deals!",
              ),
            ),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HorisintalOffer(
                    shopLogo: "assets/img/daily_mealz_logo.PNG",
                    shopName: "DailyMealz",
                    shopOfferImage: "assets/img/daily_mealz.jpg",
                  ),
                  HorisintalOffer(
                    shopLogo: "assets/img/fitness_time_logo.jpeg",
                    shopName: "Fitness Time Gym for men",
                    shopOfferImage: "assets/img/fitness_time.jpg",
                  ),
                  HorisintalOffer(
                    shopLogo: "assets/img/labeaute_logo.JPG",
                    shopName: "Labeaute De Lamour",
                    shopOfferImage: "assets/img/labeaute.jpg",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextHeader(
                title: "Daily Saving Deals!",
              ),
            ),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HorisintalOffer(
                    shopLogo: "assets/img/tamkeen_logo.png",
                    shopName: "Tamkeen Stores",
                    shopOfferImage: "assets/img/tamkeen.jpg",
                  ),
                  HorisintalOffer(
                    shopLogo: "assets/img/dolce_ragusa_logo.jpeg",
                    shopName: "Dolce Ragusa",
                    shopOfferImage: "assets/img/dolce.jpg",
                  ),
                  HorisintalOffer(
                    shopLogo: "assets/img/yelo_logo.png",
                    shopName: "Yelo",
                    shopOfferImage: "assets/img/yelo.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.green,
          child: const Icon(
            Icons.qr_code_scanner_outlined,
            size: 32,
          ),
        ),
      ),
    );
  }
}
