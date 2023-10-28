import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project3/styles/custom_colors.dart';

import '../myFamily_widegts/button_widget.dart';
import 'bottom_sheet.dart';

class DailyActivityWidget extends StatelessWidget {
  const DailyActivityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            width: 340,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffE7EEF8),
              border: Border.all(width: .5, color: Color(0xffCCD4E1)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Daily Activity",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "View More",
                        style: TextStyle(color: Color(0xff1775AB)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_outlined,
                          color: Color(0xff1775AB))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              width: 365,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(width: 1, color: Color(0xffCCD4E1)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xffE7EEF7),
                          ),
                          child: Image.asset("assets/imag99.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "268 Step",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "7732 To reach target",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffA4B1C3)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 20),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(13))),
                                  context: context,
                                  builder: (context) => Container(
                                        height: MediaQuery.of(context)
                                                .copyWith()
                                                .size
                                                .height *
                                            0.40,
                                        child: UpdateBottomSheet(),
                                      ));
                            },
                            child: Text(
                              "Update Target",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff1775AB),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Column(
                      children: [
                        Row(
                          children: [
                            TargetBox(
                              color: Color(0xffFDF7F0),
                              urImage: "assets/jam_clock.png",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InfoTarget(
                              text1: "Duration",
                              textColor: Color(0xffE69A51),
                              text2: "0 mins",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TargetBox(
                                color: Color(0xffF4FAF8),
                                urImage: "assets/game-icons_path-distance.png"),
                            SizedBox(
                              width: 5,
                            ),
                            InfoTarget(
                              text1: "Distance",
                              textColor: Color(0xff80C4B0),
                              text2: "167.9 m",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TargetBox(
                                color: Color(0xffFBF1F1),
                                urImage: "assets/bi_fire.png"),
                            SizedBox(
                              width: 5,
                            ),
                            InfoTarget(
                                text1: "Calories",
                                textColor: Color(0xffD7605B),
                                text2: "2.5 Calorie")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TargetBox extends StatelessWidget {
  const TargetBox({super.key, required this.color, required this.urImage});
  final Color color;
  final String urImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: color,
      ),
      child: Image.asset(urImage),
    );
  }
}

class InfoTarget extends StatelessWidget {
  const InfoTarget(
      {super.key,
      required this.text1,
      required this.textColor,
      required this.text2});
  final String text1;
  final Color textColor;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(color: textColor),
        ),
        SizedBox(
          height: 5,
        ),
        Text(text2),
      ],
    );
  }
}
