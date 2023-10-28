import 'package:assignment/colors/app_color.dart';
import 'package:assignment/models/series.dart';
import 'package:flutter/material.dart';

class SeriesSearchWidget extends StatefulWidget {
  const SeriesSearchWidget({super.key, required this.list});
  final Series list;
  @override
  State<SeriesSearchWidget> createState() => _SeriesSearchWidgetState();
}

class _SeriesSearchWidgetState extends State<SeriesSearchWidget> {
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
