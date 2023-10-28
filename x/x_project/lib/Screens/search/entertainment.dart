import 'package:flutter/material.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/search_view.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: ListView(
        children: const [
          SearchView(
            title: "1. Entertainment",
            subTitle: "New Movie Release: 'The Adventure Begins'",
            posts: 1112,
          ),
          height16,
          SearchView(
            title: "2. Entertainment",
            subTitle: "Concert Announcement: Top Band to Perform in the\nCity",
            posts: 942,
          ),
          height16,
          SearchView(
            title: "3. Entertainment",
            subTitle: "TV Series Premiere: 'Mystery Unraveled' Hits Screens",
            posts: 522,
          ),
          height16,
          SearchView(
            title: "4. Entertainment",
            subTitle:
                "Celebrity Gossip: A-List Couple's Secret Wedding \nRevealed",
            posts: 342,
          ),
          height16,
          SearchView(
            title: "5. Entertainment",
            subTitle: "Book Release: Bestselling Author's Latest Novel",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "6. Entertainment",
            subTitle:
                "Live Comedy Show: Laughter Guaranteed at \nUpcoming Event",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "7. Entertainment",
            subTitle:
                "Art Exhibition: Renowned Artist's \nMasterpieces on Display",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "8. Entertainment",
            subTitle: "Game Release: Highly Anticipated Sequel \nArriving Soon",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "9. Entertainment",
            subTitle: "Dance Performance: World-Class \nTroupe Visits the City",
            posts: 190,
          ),
          height16,
          SearchView(
            title: "10. Entertainment",
            subTitle:
                "Film Festival: Showcasing Independent \nCinema Creations",
            posts: 190,
          ),
        ],
      ),
    );
  }
}
