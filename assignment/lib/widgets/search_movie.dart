import 'package:assignment/colors/app_color.dart';
import 'package:assignment/models/movie.dart';
import 'package:flutter/material.dart';

class SearchMovie extends StatefulWidget {
  const SearchMovie({super.key, required this.list});
  final Movie list;
  @override
  State<SearchMovie> createState() => _SearchMovieState();
}

class _SearchMovieState extends State<SearchMovie> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      SizedBox(
        child: Image.asset(
          widget.list.image,
        ),
      ),
      Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: amber, width: 2),
        ),
        child: const Icon(
          Icons.add,
          color: amber,
        ),
      )
    ]);
  }
}
