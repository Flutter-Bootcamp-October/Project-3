import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/app_data.dart';
import 'package:yaqoot_project/Models/unlimited_data.dart';

import 'package:yaqoot_project/Widgets/usage_widgets/app_package.dart';
import 'package:yaqoot_project/Widgets/usage_widgets/data_package.dart';
import 'package:yaqoot_project/data/app_data_set.dart';
import 'package:yaqoot_project/data/unlimited_data_app.dart';
import 'package:yaqoot_project/globle/globle.dart';

class UsageInSaudi extends StatefulWidget {
  UsageInSaudi({
    super.key,
  });

  @override
  State<UsageInSaudi> createState() => _UsageInSaudiState();
}

class _UsageInSaudiState extends State<UsageInSaudi> {
  @override
  void initState() {
    super.initState();
    UnlimitedDataList.clear();
    AppDataList.clear();
    for (var element in unlimitedData) {
      UnlimitedDataList.add(Unlimiteddata.fromJson(element));
    }
    for (var element in AppData) {
      AppDataList.add(Appdata.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [Datapackage(), const Apppackage()])),
    );
  }
}
