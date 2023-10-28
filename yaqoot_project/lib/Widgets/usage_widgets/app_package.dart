import 'package:flutter/material.dart';

import 'package:yaqoot_project/Widgets/usage_widgets/app_widget.dart';

import 'package:yaqoot_project/constents/colors_style.dart';
import 'package:yaqoot_project/globle/globle.dart';

class Apppackage extends StatelessWidget {
  const Apppackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 32,
              decoration: const BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Center(
                child: Text(
                  "My Unlimited App",
                  style: TextStyle(
                      color: white, fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Column(children: AppDataList.map((e) => Appwidget(app: e)).toList())
          ],
        ),
      ),
    );
  }
}
