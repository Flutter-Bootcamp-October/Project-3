import 'package:assignment/models/movie.dart';
import 'package:flutter/material.dart';

class MoviesWidget extends StatefulWidget {
  const MoviesWidget({super.key, required this.list});
  final Movie list;

  @override
  State<MoviesWidget> createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(widget.list.image),
    );
  }
}
