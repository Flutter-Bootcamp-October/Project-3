import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget(
      {super.key,
      required this.leftSide,
      required this.rightSide,
      required this.topSide,
      required this.bottomSide});

  final double leftSide;
  final double rightSide;
  final double topSide;
  final double bottomSide;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            right: rightSide, left: leftSide, bottom: bottomSide, top: topSide),
        child: const Divider(
          color: boldGray,
        ),
      ),
    );
  }
}
