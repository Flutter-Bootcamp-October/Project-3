import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          width: 370,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xffDBF0E9),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our partners",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "What is The list below contains all the health facilities that have been successfully connected to the NPHIES Project for Unified Medical Record.",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130, left: 10),
          child: Container(
            width: 260,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(width: 1.5, color: Color(0xffD3DEF0)),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset("assets/logo1.jpeg"),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(width: 1.5, color: Color(0xffD3DEF0)),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset(
                    "assets/2d48391ac950e.jpg",
                  ),
                ),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(width: 1.5, color: Color(0xffD3DEF0)),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset("assets/C_0schPE_400x400.jpg"),
                ),
                Text("+40"),
              ],
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 310,
          child: Icon(
            Icons.arrow_circle_right,
            color: Colors.white,
            size: 40,
          ),
        ),
      ]),
    );
  }
}
