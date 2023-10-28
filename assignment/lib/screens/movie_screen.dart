import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/movies_widget.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: black,
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
        body: SafeArea(
          child: SingleChildScrollView(
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
                  reverse: true,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 1,
                  childAspectRatio: 0.69,
                  children:
                      listMovie.map((e) => MoviesWidget(list: e)).toList(),
                ),
                const Divider(
                  color: white,
                ),
                height12,
                Container(
                  height: 30,
                  width: 150,
                  decoration: const BoxDecoration(
                      border: Border.fromBorderSide(BorderSide(color: white)),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(15),
                          right: Radius.circular(15))),
                  child: Center(
                    child: Text(
                      'تصفح جميع الأفلامٍ',
                      style: white18,
                    ),
                  ),
                ),
                height12
              ],
            ),
          ),
        ),
      ),
    );
  }
}
