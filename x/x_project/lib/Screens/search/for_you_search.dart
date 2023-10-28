import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/search_view.dart';

class ForYouSearch extends StatelessWidget {
  const ForYouSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: ListView(
        children: [
          SearchView(
              title: "Trending in Saudi Arabia",
              subTitle: "Flutter",
              posts: 1112),
          height16,
          SearchView(
              title: "Trending in Saudi Arabia",
              subTitle: "Leatn new programing Language in 20 min",
              posts: 942),
          height16,
          SearchView(
              title: "Trending in Saudi Arabia",
              subTitle: "Riyadh",
              posts: 522),
          height16,
          SearchView(
              title: "Trending in Saudi Arabia",
              subTitle: "الظمان الاجتماعي",
              posts: 342),
          height16,
          SearchView(
              title: "Trending in Saudi Arabia",
              subTitle: "خلصنا المشروع قبل الويكند",
              posts: 190),
          Divider(
            color: Colors.white,
            thickness: 0.05,
          ),
          Text(
            "Videos for you",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images\\exploring-new-horizons.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images\\FKUPM.jpg",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
