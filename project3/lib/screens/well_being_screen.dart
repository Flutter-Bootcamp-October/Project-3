import 'package:flutter/material.dart';

import '../well_being_widget/appBar_wellBeing.dart';
import '../well_being_widget/bg_scroll.dart';
import '../well_being_widget/campaing_widget.dart';
import '../well_being_widget/content_scroll.dart';
import '../data/data_sets.dart';
import '../data/gloable.dart';
import '../data/model.dart';

import '../home_widget/daily_activity_widget.dart';

class WellBeingScreen extends StatefulWidget {
  const WellBeingScreen({super.key});

  @override
  State<WellBeingScreen> createState() => _WellBeingScreenState();
}

class _WellBeingScreenState extends State<WellBeingScreen> {
  @override
  void initState() {
    for (var element in dataSets) {
      listcontent.add(Educational.fromJson(element));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F7FB),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: AppBarWellBeing(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  fit: StackFit.loose,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [BgScroll(), ContentScroll()],
                ),
              ),
              DailyActivityWidget(),
              CampaingWidget(
                bgColor: Color(0xff367ABB),
                text1: 'Emsh 30 Campaign',
                text2: 'Ministry of Health Campaign',
                urImage: 'assets/image 11.png',
              ),
              SizedBox(
                height: 10,
              ),
              CampaingWidget(
                  text1: 'Challeng your friends',
                  text2: 'Create your privete challenges.',
                  bgColor: Color(0xff80C3B0),
                  urImage: 'assets/image 14.png')
            ],
          ),
        ));
  }
}
