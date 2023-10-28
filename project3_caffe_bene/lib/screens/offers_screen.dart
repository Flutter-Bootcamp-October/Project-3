import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/offer.dart';
import 'package:project3_caffe_bene/custom_wigets/offer_gridview.dart';
import 'package:project3_caffe_bene/custom_wigets/offers_card_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/stores_card_widget.dart';
import 'package:project3_caffe_bene/dataset/offers_dataset.dart';
import 'package:project3_caffe_bene/screens/offer_details_screen.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

List<Offer> listOffer = [];

class _OffersScreenState extends State<OffersScreen> {
  @override
  void initState() {
    for (var element in offerList) {
      listOffer.add(Offer.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBarWidget(context, cart: false, back: false),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: InkWell(
          onTap: () => Navigator.push(
            (context),
            MaterialPageRoute(
              builder: (context) => OfferDetailsScreen(),
            ),
          ),
          child: SizedBox(child: OfferGridView()),
        ),
      ),
    );
  }
}
