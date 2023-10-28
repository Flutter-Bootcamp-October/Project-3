import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:assignment/methods/search_app_bar.dart';
import 'package:assignment/widgets/best_movie.dart';
import 'package:assignment/widgets/best_series.dart';
import 'package:assignment/widgets/community_activity.dart';
import 'package:assignment/widgets/container_search_widget.dart';
import 'package:assignment/widgets/populer_series.dart';
import 'package:assignment/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchAppBar(),
      backgroundColor: black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: white,
                  ),
                ),
                const TitleWidget(titles: 'أفضل البرامج لك'),
                height12,
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: const BestSeries(),
                ),
                height12,
                const TitleWidget(titles: 'البرامج الرائجة'),
                height12,
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: const PopluarSeries(),
                ),
                height12,
                const ContainerSearchWidget(text: 'تصفح جميع البرامج'),
                height12,
                const TitleWidget(titles: 'الأفلام الرائجة'),
                height12,
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: const BestMovie(),
                ),
                height12,
                const ContainerSearchWidget(
                  text: 'تصفح جميع الأفلام',
                ),
                height16,
                Text(
                  'نشاط المجتمع',
                  style: whiteBold18,
                ),
                height12,
                const CommunityActivity(),
                height24
              ],
            ),
          ),
        ),
      ),
    );
  }
}
