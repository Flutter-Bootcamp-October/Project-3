import 'package:assignment/data/global.dart';
import 'package:assignment/widgets/series_search_widget.dart';
import 'package:flutter/material.dart';

class PopluarSeries extends StatelessWidget {
  const PopluarSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          listSeries.sort(
            (a, b) => a.image.compareTo(b.image),
          );
          return SeriesSearchWidget(list: listSeries[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
        itemCount: listSeries.length);
  }
}
