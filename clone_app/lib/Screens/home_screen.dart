import 'package:clone_app/Screens/wedgets/icons_continer.dart';
import 'package:clone_app/Screens/wedgets/square_ads.dart';
import 'package:clone_app/Screens/wedgets/custom_icon.dart';
import 'package:flutter/material.dart';

class HomeScreenn extends StatefulWidget {
  const HomeScreenn({super.key});

  @override
  State<HomeScreenn> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0263b2),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 60),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Color(0xff1c73ba),
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: Color(0xffe8ffff),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 10),
                child: Text(
                  "فيصل",
                  style: TextStyle(color: Color(0xff3c85bd)),
                ),
              ),
              CustomIcons()
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 350,
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SquareAds(
                    "lib\\imges\\WhatsApp Image 2023-10-24 at 17.23.35.jpg",350,150),
                SquareAds(
                    "lib\\imges\\WhatsApp Image 2023-10-24 at 17.23.35.jpg",350,150),
                SquareAds(
                    "lib\\imges\\WhatsApp Image 2023-10-24 at 17.23.35.jpg",350,150),
                SquareAds(
                    "lib\\imges\\WhatsApp Image 2023-10-24 at 17.23.35.jpg",350,150),
                SquareAds(
                    "lib\\imges\\WhatsApp Image 2023-10-24 at 17.23.35.jpg",350,150),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Color(0xff1165a9),
                ),
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff3c85bd),
                ),
              ),
              Text(
                "رصيدك",
                style: TextStyle(color: Color(0xff3c85bd)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" ريال",
                  style: TextStyle(fontSize: 25, color: Color(0xfffefef9))),
              Text("91.60 ",
                  style: TextStyle(fontSize: 30, color: Color(0xfffefef9))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(16),
            child: Container(
              color: Color(0xfff6a800),
              width: 150,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "إضافه اموال",
                    style: TextStyle(color: Color(0xfff8f3be), fontSize: 18),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Color(0xfff6a800),
                    ),
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      color: Color(0xfff8f3be),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconsContiner(
                  Icons.coffee_outlined, Color(0xfffb668c), "استلام الطعام"),
              IconsContiner(Icons.blinds_closed_rounded, Color(0xff157edb),
                  "فواتير سداد"),
              IconsContiner(Icons.blur_circular_outlined, Color(0xff8064f6),
                  "التحويل الدولي")
            ],
          ),
          SizedBox(
            height: 14,
          ),
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(16),
            child: Container(
              height: 7,
              width: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "اسحب للاعلى",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
