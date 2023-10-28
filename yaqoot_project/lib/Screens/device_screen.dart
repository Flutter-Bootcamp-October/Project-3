import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/add_ons.dart';

import 'package:yaqoot_project/Widgets/device_widget/device_gridview.dart';
import 'package:yaqoot_project/data/add_ons_data.dart';
import 'package:yaqoot_project/globle/globle.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  @override
  void initState() {
    super.initState();
    AddOnsList = [];
    for (var addons in AddOnsDataSet) {
      AddOnsList.add(AddOns.fromJson(addons));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ProductsGridView()],
      ),
    );
  }
}
