import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthId extends StatelessWidget {
  const HealthId({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 360,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(13),
          border: Border.all(width: 1.5, color: Color(0xffD3DEF0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 80, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "REEMA ALAHMARI",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text("Health ID: 30000011113468"),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Details ",
                      style: TextStyle(color: Color(0xff367ABB)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        size: 18, color: Color(0xff367ABB))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 20,
        top: 15,
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Color(0xff367ABB),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 15),
            child: Text(
              "R",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    ]);
  }
}
