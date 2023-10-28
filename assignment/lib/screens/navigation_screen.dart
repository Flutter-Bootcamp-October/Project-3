import 'package:assignment/colors/app_color.dart';
import 'package:assignment/data/global.dart';
import 'package:assignment/data/movies_data.dart';
import 'package:assignment/data/series_data.dart';
import 'package:assignment/models/movie.dart';
import 'package:assignment/models/series.dart';
import 'package:assignment/screens/movie_screen.dart';
import 'package:assignment/screens/profile_screen.dart';
import 'package:assignment/screens/series_screen.dart';
import 'package:assignment/screens/search_screen.dart';
import 'package:assignment/widgets/navi_widget.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({
    super.key,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

int selectindex = 1;
List screen = [
  const ProfileScreen(),
  const SearchScreen(),
  const MovieScreen(),
  const SeriesScreen(),
];

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  void initState() {
    for (var element in dataMovies) {
      listMovie.add(Movie.fromJson(element));
    }
    for (var element in dataSeries) {
      listSeries.add(Series.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        height: 50,
        color: black,
        child: Row(
          children: [
            Expanded(
              child: NavigationWidget(
                isSelect: selectindex == 0 ? true : false,
                named: 'Profile',
                icons: Icons.person_outline_sharp,
                onPressed: () {
                  selectindex = 0;
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: NavigationWidget(
                isSelect: selectindex == 1 ? true : false,
                named: 'Search',
                icons: Icons.search,
                onPressed: () {
                  selectindex = 1;
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: NavigationWidget(
                isSelect: selectindex == 2 ? true : false,
                named: 'Movie',
                icons: Icons.movie_creation_outlined,
                onPressed: () {
                  selectindex = 2;
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: NavigationWidget(
                isSelect: selectindex == 3 ? true : false,
                named: 'Series',
                icons: Icons.tv,
                onPressed: () {
                  selectindex = 3;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
      body: screen[selectindex],
    );
  }
}
