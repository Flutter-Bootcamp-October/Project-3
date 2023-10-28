import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/add_ons.dart';
import 'package:yaqoot_project/Widgets/add_Ons/add_ons_gridview.dart';
import 'package:yaqoot_project/data/add_ons_data.dart';
import 'package:yaqoot_project/globle/globle.dart';

class AddOnsScreen extends StatefulWidget {
  const AddOnsScreen({super.key});

  @override
  State<AddOnsScreen> createState() => _AddOnsScreenState();
}

class _AddOnsScreenState extends State<AddOnsScreen> {
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
        children: [AddOnsGridView()],
      ),
    );
  }
}
