import 'package:fitbit/consts/you_screen_consts.dart';
import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/global/user.dart';
import 'package:fitbit/widgets/community_widget.dart';
import 'package:fitbit/widgets/goals_list_widget.dart';
import 'package:flutter/material.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarBackground,
      appBar: fitbitAppBar,
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 20, right: 8, bottom: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  width: context.getWidithSizing(number: .9),
                  height: context.getHeightSizing(number: 0.25),
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.fitbit, size: 45),
                  const SizedBox(height: 40),
                  Text(userInfo["name"],
                      style:
                          const TextStyle(fontSize: 30, color: Colors.black)),
                  const SizedBox(height: 5),
                  Text(
                    userInfo["time"],
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const Text(
                    "Get Fitbit Premium",
                    style: TextStyle(fontSize: 14, color: Color(0xff007a81)),
                  )
                ],
              ),
            )
          ]),
          communityTitle,
          const Community(),
          const Padding(
            padding: EdgeInsets.all(25),
            child: goalsTitle,
          ),
          const Goals()
        ],
      ),
    );
  }
}
