import 'package:fitbit/data/data.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';

class Instructors extends StatelessWidget {
  const Instructors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.getHeightSizing(number: .4),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  width: context.getWidithSizing(number: .4),
                  height: context.getHeightSizing(number: 0.3),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset(coachsData[index]["imagePath"],
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: 10),
                Text(coachsData[index]["name"],
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                const SizedBox(height: 7),
                const Text("Fitness Instructor",
                    style: TextStyle(color: Color.fromARGB(255, 114, 114, 114)))
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 14),
        ));
  }
}