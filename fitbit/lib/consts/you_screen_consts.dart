import 'package:flutter/material.dart';

const Align communityTitle = Align(
  alignment: Alignment.bottomLeft,
  child: Padding(
    padding: EdgeInsets.only(left: 20.0),
    child: Text(
      "Community",
      style: TextStyle(fontSize: 18),
    ),
  ),
);

const Row goalsTitle = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      "Goals",
      style: TextStyle(fontSize: 18),
    ),
    Text(
      "See all",
      style: TextStyle(color: Color(0xff007a81)),
    ),
  ],
);
