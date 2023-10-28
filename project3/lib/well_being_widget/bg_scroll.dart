import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BgScroll extends StatelessWidget {
  const BgScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color(0xffFBFCFF),
        border: Border.all(width: 1.5, color: Color(0xffC9D5EC)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Educational Content",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff191F3A)),
            ),
            SizedBox(
              width: 60,
            ),
            Text("Display All  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Color(0xff367ABB))),
            Icon(
              Icons.arrow_forward,
              color: Color(0xff367ABB),
            ),
          ],
        ),
      ),
    );
  }
}
