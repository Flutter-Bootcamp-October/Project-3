import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/stores_card_widget.dart';
import 'package:project3_caffe_bene/screens/stores_screen.dart';

class StoreGridView extends StatelessWidget {
  const StoreGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 1,
      shrinkWrap: true,
      mainAxisSpacing: 10,
      childAspectRatio: 15.8 / 8,
      children: list
          .map((e) => storesCardWidget(
                store: e,
              ))
          .toList(),
    );
  }
}
