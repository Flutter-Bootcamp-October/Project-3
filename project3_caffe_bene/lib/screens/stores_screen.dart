import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/store_gridView.dart';
import 'package:project3_caffe_bene/custom_wigets/stores.dart';
import 'package:project3_caffe_bene/dataset/stores_dataset.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

List<Stores> list = [];

class _StoresScreenState extends State<StoresScreen> {
  @override
  void initState() {
    for (var element in storesList) {
      list.add(Stores.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBarWidget(context, cart: false, back: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          child: StoreGridView(),
        ),
      ),
    );
  }
}
