import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/search_view.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: ListView(
        children: const [
          SearchView(
              title: "1. Trending",
              subTitle: "Discover Exciting Flutter Trends",
              posts: 1112),
          height16,
          SearchView(
              title: "2. Trending",
              subTitle: "Learn New Programming Language in 20 Minutes",
              posts: 942),
          height16,
          SearchView(
              title: "3. Trending",
              subTitle: "Explore Beautiful Riyadh",
              posts: 522),
          height16,
          SearchView(
              title: "4. Trending", subTitle: "الضمان الاجتماعي", posts: 342),
          height16,
          SearchView(
              title: "5. Trending",
              subTitle: "Successfully Completed the Project",
              posts: 190),
          height16,
          SearchView(
              title: "6. Trending",
              subTitle: "Achieved Project Completion Ahead of Schedule",
              posts: 190),
          height16,
          SearchView(
              title: "7. Trending",
              subTitle: "Weekend Project Success Story",
              posts: 190),
          height16,
          SearchView(
              title: "8. Trending",
              subTitle: "Exceeding Weekend Project Goals",
              posts: 190),
          height16,
          SearchView(
              title: "9. Trending",
              subTitle: "Weekend Project Triumph",
              posts: 190),
          height16,
          SearchView(
              title: "10. Trending",
              subTitle: "Weekend Project Victory",
              posts: 190)
        ],
      ),
    );
  }
}
