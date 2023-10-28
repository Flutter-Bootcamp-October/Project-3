import 'package:fitbit/data/data.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';

class Featureds extends StatelessWidget {
  const Featureds({super.key});
//postssData
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeightSizing(number: 0.45),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              SizedBox(
                width: context.getWidithSizing(number: 1),
                height: context.getHeightSizing(number: 0.45),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(postssData[index]["imagePath"],
                        fit: BoxFit.cover)),
              ),
              Positioned(
                left: 20,
                top: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postssData[index]["title"],
                      style: const TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(
                          postssData[index]["icon"],
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(postssData[index]["time"],
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(postssData[index]["type"],
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
      ),
    );
  }
}
