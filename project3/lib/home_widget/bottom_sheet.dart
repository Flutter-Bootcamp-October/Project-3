import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myFamily_widegts/button_widget.dart';
import '../styles/custom_colors.dart';

class UpdateBottomSheet extends StatelessWidget {
  const UpdateBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 65, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daily steps goal",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 354,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: .40, color: font),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                hintText: '  8000',
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: ButtonWidget(
              text: 'Update',
            ),
          )
        ],
      ),
    );
  }
}
