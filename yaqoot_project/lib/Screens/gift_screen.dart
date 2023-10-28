import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/gift_call_data.dart';
import 'package:yaqoot_project/Models/gift_roaming.dart';
import 'package:yaqoot_project/Widgets/gift_widget/gift_call_data/gift_call_data_section.dart';
import 'package:yaqoot_project/Widgets/gift_widget/gift_roaming/gift_roaming_section.dart';
import 'package:yaqoot_project/Widgets/gift_widget/text_fild.dart';
import 'package:yaqoot_project/Widgets/gift_widget/title_section.dart';
import 'package:yaqoot_project/data/gift_call_data.dart';
import 'package:yaqoot_project/data/gift_roamingpackage.dart';
import 'package:yaqoot_project/globle/globle.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in GiftRoamingDataSet) {
      GiftRoamingList.add(GiftRoaming.fromJson(element));
    }
    for (var element in GiftCallDataDataSet) {
      GiftCallDataList.add(GiftCallData.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFild(),
            SizedBox(
              height: 12,
            ),
            TitleSection(
              title: 'Roaming Packages',
              visible: false,
            ),
            SizedBox(height: 220, child: GiftRoamingSection()),
            TitleSection(
              title: 'Calls and data',
              visible: true,
              subtitle: 'See All',
            ),
            SizedBox(height: 220, child: GiftCallDataSection()),
          ],
        ),
      ),
    );
  }
}
