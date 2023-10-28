import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

// ignore: must_be_immutable
class ButtonNotification extends StatelessWidget {
  ButtonNotification(
      {super.key,
      required this.description,
      required this.title,
      required this.icon});
  String title;
  String description;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(350, 110),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: red, borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: white,
                          border: Border.all(color: red)),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontSize: 16,
                              color: green,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: red, fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      color: purpul, fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
