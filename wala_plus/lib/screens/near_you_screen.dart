import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/data/datasets.dart';
import 'package:wala_plus/modules/modules.dart';
import 'package:wala_plus/widgets/category_horisintal.dart';
import 'package:wala_plus/widgets/near_you_list.dart';
import 'package:wala_plus/widgets/second_appbar.dart';

List<Store> listStore = [];

class NearYouScreen extends StatefulWidget {
  const NearYouScreen({super.key});

  @override
  State<NearYouScreen> createState() => _NearYouScreenState();
}

class _NearYouScreenState extends State<NearYouScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var element in datasets) {
      listStore.add(Store.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const Column(
        children: [
          SecondAppBar(
            title: "Stores Closets to You",
          ),
          CategoryHorisintal(),
          NearYouList(),
        ],
      ),
    );
  }
}
