import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/movies_widget.dart';
import 'package:flutter/material.dart';

class ShowMovie extends StatefulWidget {
  const ShowMovie({super.key, this.y = false});
  final bool y;
  @override
  State<ShowMovie> createState() => _ShowMovieState();
}

class _ShowMovieState extends State<ShowMovie> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        reverse: widget.y,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return MoviesWidget(list: listMovie[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
        itemCount: listMovie.length);
  }
}
