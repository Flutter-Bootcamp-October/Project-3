import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/gift_widget/gift_call_data/gift_call_data_widget.dart';

import 'package:yaqoot_project/globle/globle.dart';

class GiftCallDataSection extends StatelessWidget {
  const GiftCallDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GiftCallDataWidgit(product: GiftCallDataList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 12,
        );
      },
      itemCount: GiftCallDataList.length,
    );
  }
}
