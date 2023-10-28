import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/offers_card_widget.dart';
import 'package:project3_caffe_bene/screens/offers_screen.dart';

class OfferGridView extends StatelessWidget {
  const OfferGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 1,
      shrinkWrap: true,
      mainAxisSpacing: 10,
      childAspectRatio: 15 / 8,
      children: listOffer.map((e) => offersCardWidget(offer: e)).toList(),
    );
  }
}
