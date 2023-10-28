import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/choice_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/container_category.dart';
import 'package:project3_caffe_bene/custom_wigets/menu_card2.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context, cart: false, back: true),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    "Our Best Recipes",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Discover Our Menu",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ChoiceWidget(),
            const SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Coffee',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Non Coffee',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            const SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Chocolaty',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            const SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Healthy',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            const SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Refreshing',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            const SizedBox(
              height: 8,
            ),
            const containerCategory(
              title: 'Special',
            ),
            const SizedBox(
              height: 8,
            ),
            MenuCardTwo(),
            const SizedBox(
              height: 8,
            ),
          ]),
        ),
      ),
    );
  }
}
