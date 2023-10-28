import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/search_movie.dart';
import 'package:flutter/material.dart';

class BestMovie extends StatelessWidget {
  const BestMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          listMovie.sort(
            (a, b) => b.name.compareTo(a.name),
          );
          return SearchMovie(list: listMovie[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
        itemCount: listMovie.length);
  }
}
