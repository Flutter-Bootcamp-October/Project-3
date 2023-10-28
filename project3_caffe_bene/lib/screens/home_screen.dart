import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/home_main_container.dart';
import 'package:project3_caffe_bene/custom_wigets/menu_card_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/offers_Widget.dart';
import 'package:project3_caffe_bene/custom_wigets/rewards_card_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/view_menu_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context, cart: true, back: false),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    homeMainContainer(
                      image: 'assets/honeyBreadOfferjpg.jpg',
                    ),
                    homeMainContainer(
                      image: 'assets/frappeOffer.jpg',
                    ),
                    homeMainContainer(
                      image: 'assets/matchaDrinks.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Coffee",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  viewMenuButton(),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MenuCard(),
                    SizedBox(
                      width: 5,
                    ),
                    MenuCard(),
                    SizedBox(
                      width: 5,
                    ),
                    MenuCard(),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Would like to order?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff6f584d),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    "Order now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Rewards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RewardsCardWidget(),
                      RewardsCardWidget(),
                      RewardsCardWidget(),
                    ],
                  )),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "New Offers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    offersStackWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    offersStackWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    offersStackWidget(),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
