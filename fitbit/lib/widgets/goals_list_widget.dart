import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/data/data.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: context.getHeightSizing(number: .21),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: goals.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.white,
                    width: context.getWidithSizing(number: 0.35),
                    height: context.getHeightSizing(number: 0.21),
                  )),
              Positioned(
                top: 20,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageIcon(
                        color: appBarIconColor,
                        size: 40,
                        AssetImage(goals[index]["icon"])),
                    const SizedBox(height: 60),
                    Text(
                      goals[index]["title"],
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 3),
                    Text(goals[index]["goals"],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 125, 124, 124),
                        )),
                  ],
                ),
              )
            ]);
          },
          separatorBuilder: (context, index) => const SizedBox(width: 12),
        ),
      ),
    );
  }
}
