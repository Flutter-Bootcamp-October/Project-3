import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/product_devices.dart';
import 'package:yaqoot_project/Widgets/appbar/app_bar.dart';
import 'package:yaqoot_project/Widgets/home_widgets/best_offers_section.dart';

import 'package:yaqoot_project/Widgets/home_widgets/notification_scroll.dart';

import 'package:yaqoot_project/Widgets/home_widgets/remaining_data_widget.dart';
import 'package:yaqoot_project/Widgets/home_widgets/section_title.dart';
import 'package:yaqoot_project/constents/colors_style.dart';
import 'package:yaqoot_project/data/device_data.dart';
import 'package:yaqoot_project/globle/globle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    for (var product in deviceDataSet) {
      DataDeviceList.add(Productdevice.fromJson(product));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RemainingData(
                Days: '2 Days',
                dataGB: '6.7GB',
                date: '25/10/2023',
                title: '1X Package',
                totalGB: '50',
                bottun1: 'Renew',
                bottun2: 'Add-ons',
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Do this first',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Notificationsection(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Sectiontitle(),
                  ),
                  SizedBox(height: 220, child: Bestoffers()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
