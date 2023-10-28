import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:flutter/material.dart';

class ContainerStatics extends StatelessWidget {
  const ContainerStatics({
    super.key,
    required this.name,
    required this.count,
    required this.hour,
    required this.month,
    required this.timeday,
    required this.timehour,
    required this.timemonth,
  });
  final String name;
  final String count;
  final String hour;

  final String month;
  final String timeday;
  final String timehour;
  final String timemonth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Center(
                child: Text(name,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              height12,
              const Divider(
                color: white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(hour, style: const TextStyle(color: Colors.white)),
                      Text(timehour,
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(count, style: const TextStyle(color: Colors.white)),
                      Text(timeday, style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(month, style: const TextStyle(color: Colors.white)),
                      Text(timemonth,
                          style: const TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
