import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/home_widgets/prodect_widget.dart';
import 'package:yaqoot_project/globle/globle.dart';

class Bestoffers extends StatelessWidget {
  const Bestoffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ProductWidget(product: DataDeviceList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 4,
        );
      },
      itemCount: DataDeviceList.length,
    );
  }
}
