import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:flutter/material.dart';

class ContainerSearchWidget extends StatelessWidget {
  const ContainerSearchWidget({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(Icons.arrow_back_ios_new),
        Row(
          children: [
             Text(text),
            width8,
            Container(
              height: 50,
              width: 50,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: black),
              child: const Icon(Icons.tv, color: white),
            ),
          ],
        )
      ]),
    );
  }
}
