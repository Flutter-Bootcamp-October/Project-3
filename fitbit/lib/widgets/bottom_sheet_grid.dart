import 'package:fitbit/data/data.dart';
import 'package:flutter/material.dart';

class BottomSheetGrid extends StatelessWidget {
  const BottomSheetGrid({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(bottomSheet[index].length, (i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              height: 80,
              width: 180,
              color: const Color(0xffcce7df),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(bottomSheet[index][i]["icon"]),
                const SizedBox(width: 5),
                Text(bottomSheet[index][i]["text"])
              ])),
        );
      }),
    );
  }
}
