import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/search_view.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: ListView(
        children: const [
          SearchView(
            title: "1. News",
            subTitle:
                "Study Reveals Positive Effects of Meditation \non Mental Health",
            posts: 1112,
          ),
          height16,
          SearchView(
            title: "2. News",
            subTitle:
                "Government Announces Plan to Invest in \nInfrastructure Projects",
            posts: 942,
          ),
          height16,
          SearchView(
            title: "3. News",
            subTitle: "Local School Wins National Robotics Competition",
            posts: 522,
          ),
          height16,
          SearchView(
            title: "4. News",
            subTitle: "Major Tech Company Launches Innovative \nProduct Line",
            posts: 342,
          ),
          height16,
          SearchView(
            title: "5. News",
            subTitle: "Scientists Discover New Species in Amazon \nRainforest",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "6. News",
            subTitle: "Economic Growth Predicted for the Upcoming Year",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "7. News",
            subTitle: "Local Community Comes Together to Fight Hunger",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "8. News",
            subTitle: "New Book by Renowned Author Hits Bestseller Lists",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "9. News",
            subTitle: "Space Exploration Mission Set to Launch Next Month",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "10. News",
            subTitle:
                "Healthcare Workers Receive Recognition \nfor Their Efforts",
            posts: 190,
          ),
        ],
      ),
    );
  }
}
