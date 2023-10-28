import 'package:flutter/material.dart';
import 'package:yaqoot_project/Screens/add_ons_screen.dart';
import 'package:yaqoot_project/Screens/gift_screen.dart';
import 'package:yaqoot_project/Screens/package_screen.dart';

import 'package:yaqoot_project/Widgets/appbar/app_bar_store.dart';
import 'package:yaqoot_project/Widgets/device_widget/device_gridview.dart';

class Storescreen extends StatefulWidget {
  const Storescreen({super.key});

  @override
  State<Storescreen> createState() => _StorescreenState();
}

class _StorescreenState extends State<Storescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBarStore(context),
        body: TabBarView(
          children: [
            GiftScreen(),
            PackageScreen(),
            AddOnsScreen(),
            ProductsGridView(),
          ],
        ),
      ),
    );
  }
}
