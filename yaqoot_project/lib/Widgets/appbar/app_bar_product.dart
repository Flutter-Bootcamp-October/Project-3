import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/product_devices.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

late Productdevice product;
AppBarProduct(BuildContext context, product) {
  return AppBar(
      backgroundColor: Colors.white,
      title: Text(product.deviceName,
          style: const TextStyle(
              color: purpul, fontSize: 16, fontWeight: FontWeight.w900)),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
        ),
      ));
}
