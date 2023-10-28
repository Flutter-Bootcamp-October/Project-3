import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/series_widget.dart';
import 'package:flutter/material.dart';

class ShowSeries extends StatefulWidget {
  const ShowSeries({super.key});

  @override
  State<ShowSeries> createState() => _ShowSeriesState();
}

class _ShowSeriesState extends State<ShowSeries> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          listSeries.sort(
            (a, b) => a.image.compareTo(b.image),
          );
          return SeriesWidget(list: listSeries[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
        itemCount: listSeries.length);
  }
}
