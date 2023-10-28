import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/product_devices.dart';
import 'package:yaqoot_project/Widgets/appbar/app_bar_product.dart';

import 'package:yaqoot_project/constents/colors_style.dart';
import 'package:yaqoot_project/constents/fonts_style.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});
  final Productdevice product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Container(
              width: 200,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text('Order now | ${product.price} SAR',
                      style: TextStyle(color: white, fontSize: 18))),
            ),
          ),
        ),
      ),
      appBar: AppBarProduct(context, product),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(product.image),
            ExpansionTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              collapsedTextColor: Colors.black,
              subtitle: const Divider(
                thickness: 2,
              ),
              childrenPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: const Text(
                'Specification',
                style: TextStyle(
                    color: purpul, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              children: [
                Text(product.description, style: font18),
              ],
            )
          ],
        ),
      ),
    );
  }
}
