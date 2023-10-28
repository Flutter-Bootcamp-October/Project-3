import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/series_widget.dart';
import 'package:flutter/material.dart';

class SeriesScreen extends StatelessWidget {
  const SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const TabBar(
            tabs: [Text("المترقبة"), Text("قائمة المشاهدة")],
            indicatorColor: white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        floatingActionButton: const Icon(
          Icons.view_cozy_outlined,
          color: amber,
          size: 40,
        ),
        backgroundColor: black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              height24,
              Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: const BorderRadiusDirectional.horizontal(
                        start: Radius.circular(20), end: Radius.circular(20)),
                    border: Border.all(width: 2)),
                child: const Center(
                  child: Text(
                    "شاهد التالي",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                shrinkWrap: true,
                crossAxisSpacing: 1,
                childAspectRatio: 0.69,
                children: listSeries.map((e) => SeriesWidget(list: e)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
