import 'package:fitbit/consts/today_consts.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/widgets/bottom_sheet_grid.dart';
import 'package:flutter/material.dart';

class TodayBottomSheet extends StatelessWidget {
  const TodayBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.getHeightSizing(number: .9),
        child: const Column(children: [
          Icon(Icons.drag_handle),
          trackLiveText,
          BottomSheetGrid(index: 0),
          manuallyLogText,
          BottomSheetGrid(index: 1),
        ]));
  }
}
