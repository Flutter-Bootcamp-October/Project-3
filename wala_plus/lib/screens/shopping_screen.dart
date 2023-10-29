import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/widgets/category_taps.dart';
import 'package:wala_plus/widgets/second_appbar.dart';
import 'package:wala_plus/widgets/shopping_list.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SecondAppBar(
            title: "Wala Market",
          ),
          CategoryTaps(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio: 6 / 2,
                crossAxisCount: 2,
                children: const [
                  ShopList(
                      image: "assets/img/shop_online.png",
                      shopName: "Shop Online"),
                  ShopList(
                      image: "assets/img/resttaurants.png",
                      shopName: "Restaurants"),
                  ShopList(
                      image: "assets/img/drink.png",
                      shopName: "Cafes & Drinks"),
                  ShopList(image: "assets/img/gym.png", shopName: "Fitness"),
                  ShopList(
                      image: "assets/img/sweet.png",
                      shopName: "Sweets & Bakery"),
                  ShopList(
                      image: "assets/img/shopping.jpeg", shopName: "Shopping"),
                  ShopList(
                      image: "assets/img/entertaainment.png",
                      shopName: "Entertainment and\n Tourism"),
                  ShopList(
                      image: "assets/img/shop_online.png",
                      shopName: "Pesronal Care"),
                  ShopList(image: "assets/img/car.png", shopName: "Car"),
                  ShopList(image: "assets/img/home.png", shopName: "Home"),
                  ShopList(
                      image: "assets/img/perfumes.png", shopName: "Perfumes"),
                  ShopList(
                      image: "assets/img/entertaainment.png",
                      shopName: "Travel & Tourism"),
                  ShopList(
                      image: "assets/img/education.png",
                      shopName: "Education and\ntraining"),
                  ShopList(
                      image: "assets/img/healthCare.png",
                      shopName: "Health Care"),
                  ShopList(
                      image: "assets/img/cashback.png", shopName: "CashBack"),
                  ShopList(image: "assets/img/drink.png", shopName: "Drinks"),
                  ShopList(
                      image: "assets/img/service.png", shopName: "Services"),
                  ShopList(
                      image: "assets/img/shop_online.png", shopName: "Optical"),
                  ShopList(
                      image: "assets/img/gift.png",
                      shopName: "Gift and Flowers"),
                  ShopList(image: "assets/img/coffee.png", shopName: "Coffee"),
                  ShopList(
                      image: "assets/img/jewelry.png",
                      shopName: "Jewelry and\nAccessories"),
                  ShopList(
                      image: "assets/img/perfumes.png", shopName: "Perfumes"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
