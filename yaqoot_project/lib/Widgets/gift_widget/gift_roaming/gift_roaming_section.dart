import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/gift_widget/gift_roaming/gift_roaming_widget.dart';

import 'package:yaqoot_project/globle/globle.dart';

class GiftRoamingSection extends StatelessWidget {
  const GiftRoamingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GiftRoamingWidgit(product: GiftRoamingList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 12,
        );
      },
      itemCount: GiftRoamingList.length,
    );
  }
}
