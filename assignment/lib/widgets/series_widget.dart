import 'package:assignment/models/series.dart';
import 'package:flutter/material.dart';

class SeriesWidget extends StatefulWidget {
  const SeriesWidget({super.key, required this.list});
  final Series list;

  @override
  State<SeriesWidget> createState() => _SeriesWidgetState();
}

class _SeriesWidgetState extends State<SeriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        widget.list.image,
      ),
    );
  }
}
