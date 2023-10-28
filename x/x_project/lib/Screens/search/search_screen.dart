import 'package:flutter/material.dart';
import 'package:x_project/Screens/search/entertainment.dart';
import 'package:x_project/Screens/search/for_you_search.dart';
import 'package:x_project/Screens/search/news.dart';
import 'package:x_project/Screens/search/sport.dart';
import 'package:x_project/Screens/search/trending.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/tools/size.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchState();
}

class _SearchState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundColor,
            elevation: 0,
            leading: const Icon(
              Icons.account_circle,
              color: Color(0xffc9d4da),
              size: 30,
            ),
            title: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff10171f),
                      hintText: "Search X",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            centerTitle: true,
            actions: const [
              Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              width8
            ],
            bottom: const TabBar(
              isScrollable: true,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Trending"),
                Tab(text: "News"),
                Tab(text: "Sport"),
                Tab(text: "Entertainment"),
              ],
            ),
          ),
          backgroundColor: backgroundColor,
          body: const TabBarView(children: [
            ForYouSearch(),
            Trending(),
            News(),
            Sport(),
            Entertainment(),
          ])),
    );
  }
}
