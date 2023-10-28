import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampaingWidget extends StatelessWidget {
  const CampaingWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.bgColor,
    required this.urImage,
  }) : super(key: key);
  final String text1;
  final String text2;
  final Color bgColor;
  final String urImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 365,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: bgColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
        Positioned(
            left: 265,
            bottom: -15,
            child: SizedBox(
              height: 125,
              width: 125,
              child: Image.asset(urImage),
            ))
      ],
    );
  }
}
