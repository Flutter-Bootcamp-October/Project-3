import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/movies_widget.dart';
import 'package:flutter/material.dart';

class MovieSearch extends StatelessWidget {
  const MovieSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          listMovie.sort(
            (a, b) => b.name.compareTo(a.name),
          );
          return MoviesWidget(list: listMovie[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
        itemCount: listMovie.length);
  }
}