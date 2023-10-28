import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/search_view.dart';

class Sport extends StatelessWidget {
  const Sport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: ListView(
        children: const [
          SearchView(
            title: "1. Sports",
            subTitle: "Soccer: Local Team Wins National Championship",
            posts: 1112,
          ),
          height16,
          SearchView(
            title: "2. Sports",
            subTitle: "Basketball: MVP Candidate Sets New Scoring Record",
            posts: 942,
          ),
          height16,
          SearchView(
            title: "3. Sports",
            subTitle: "Golf: Upcoming Major Tournament Tees Off Next \nWeek",
            posts: 522,
          ),
          height16,
          SearchView(
            title: "4. Sports",
            subTitle: "Tennis: Grand Slam Champion Announces Retirement",
            posts: 342,
          ),
          height16,
          SearchView(
            title: "5. Sports",
            subTitle: "Baseball: Trade Deadline Deals Shake Up League",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "6. Sports",
            subTitle: "Olympics: Team Achieves Historic Medal Haul",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "7. Sports",
            subTitle:
                "Hockey: Local Arena Renovation Project Progress \nUpdate",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "8. Sports",
            subTitle: "Athletics: World Record Broken in Sprint Event",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "9. Sports",
            subTitle: "Cycling: National Race Series Kicks Off This Weekend",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "10. Sports",
            subTitle: "Swimming: Young Talent Emerges as Future Star",
            posts: 190,
          ),
        ],
      ),
    );
  }
}
