import 'package:flutter/material.dart';
import '../home_widget/card_weather_widget.dart';
import '../home_widget/daily_activity_widget.dart';
import '../home_widget/search_widget..dart';
import '../home_widget/view_doctor_widget.dart';
import '../styles/custom_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7FC),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Icon(
                Icons.menu,
                color: secondary,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_active_outlined,
                color: secondary,
                size: 25,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            child: SizedBox(
                height: 70, width: 70, child: Image.asset("assets/logo.png")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello REEMA",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("How are you feeling today?",
                    style: TextStyle(fontSize: 18, color: Color(0xffA6B0BA))),
                SizedBox(
                  height: 10,
                ),
                SearchWidget(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CardWeatherWidget(),
                ),
                SizedBox(
                  height: 22,
                ),
                DailyActivityWidget(),
                SizedBox(
                  height: 22,
                ),
                ViewDoctorWidget(),
              ]),
        ),
      ),
    );
  }
}
