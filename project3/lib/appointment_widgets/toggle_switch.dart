import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffDBE0E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        labelColor: Color(0xff007DCA),
        unselectedLabelColor: Color(0xffA3B9CB),
        indicatorColor: Colors.white,
        indicatorWeight: 2,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        tabs: [
          Tab(text: "Upcoming"),
          Tab(text: "Past"),
        ],
      ),
    );
  }
}
