import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/package.dart';

import 'package:yaqoot_project/Widgets/package_widgets/package_scroll.dart';
import 'package:yaqoot_project/data/packages_data.dart';
import 'package:yaqoot_project/globle/globle.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  void initState() {
    super.initState();
    PackageList = [];
    for (var package in PackageDataSet) {
      PackageList.add(Packagedata.fromJson(package));
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [SizedBox(height: 600, child: PackageScrool())],
      ),
    ));
  }
}
