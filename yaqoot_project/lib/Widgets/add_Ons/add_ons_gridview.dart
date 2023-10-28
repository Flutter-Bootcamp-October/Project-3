import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/add_Ons/add_ons_widget.dart';

import 'package:yaqoot_project/globle/globle.dart';

class AddOnsGridView extends StatelessWidget {
  const AddOnsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        childAspectRatio: 9 / 16,
        children: AddOnsList.map((item) => AddOnsWidget(
              product: item,
            )).toList(),
      ),
    );
  }
}
