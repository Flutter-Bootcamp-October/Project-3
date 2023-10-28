import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/widgets/row_follower_widget.dart';
import 'package:assignment/widgets/scroll_statics.dart';
import 'package:assignment/widgets/show_movie.dart';
import 'package:assignment/widgets/show_series.dart';
import 'package:assignment/widgets/silvar_app_bar.dart';
import 'package:assignment/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          const SilvarAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const RowFollower(),
                        height16,
                        const TitleWidget(titles: 'أحصائيات'),
                        height16,
                        const ScrollStatics(),
                        height16,
                        const TitleWidget(titles: 'القوائم'),
                        height12,
                        Container(
                          color: const Color.fromARGB(66, 70, 69, 69),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        height16,
                        const TitleWidget(titles: 'مسلسلات'),
                        height16,
                        SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: const ShowSeries(),
                        ),
                        height16,
                        const TitleWidget(titles: 'المسلسلات المفضلة'),
                        height12,
                        Container(
                          color: const Color.fromARGB(66, 70, 69, 69),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        height16,
                        const TitleWidget(titles: 'أفلام'),
                        height16,
                        SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: const ShowMovie(
                            y: true,
                          ),
                        ),
                        height16,
                        const TitleWidget(titles: 'الأفلام المفضلة'),
                        height12,
                        Container(
                          color: const Color.fromARGB(66, 70, 69, 69),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
