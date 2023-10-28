import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/device_widget/device_widget.dart';

import 'package:yaqoot_project/globle/globle.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        childAspectRatio: 9 / 16,
        children: DataDeviceList.map((item) => DeviceWidget(
              product: item,
            )).toList(),
      ),
    );
  }
}
