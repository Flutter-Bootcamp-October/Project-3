import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/widgets/coach_featured_list.dart';
import 'package:fitbit/widgets/coach_screen_category.dart';
import 'package:fitbit/widgets/instructors_list.dart';
import 'package:flutter/material.dart';

class CoachScreen extends StatefulWidget {
  const CoachScreen({super.key});

  @override
  State<CoachScreen> createState() => _CoachScreenState();
}

class _CoachScreenState extends State<CoachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarBackground,
        appBar: fitbitAppBar,
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryWidget(),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Featured",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Featureds(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(style: TextStyle(fontSize: 18), "Instructors")),
              ),
              Instructors()
            ],
          ),
        ));
  }
}
