import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';

import 'package:project3_caffe_bene/custom_wigets/offer_details_widget.dart';

class OfferDetailsScreen extends StatelessWidget {
  const OfferDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context, cart: false, back: true),
      body: OfferDetailsWidget(),
    );
  }
}
