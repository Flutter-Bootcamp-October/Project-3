import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.name,
    required this.time,
    required this.condition,
    required this.conditionColor,
    required this.conditionTextColor,
  });

  final String name;
  final String time;
  final String condition;
  final int conditionColor;
  final int conditionTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 7,
            child: Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, top: 8),
                  child: Container(
                      width: 90,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Color(conditionColor),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Color(conditionTextColor))),
                      child: Center(
                          child: Text(
                        condition,
                        style: TextStyle(color: Color(conditionTextColor)),
                      ))),
                )
              ],
            ),
          ),
          Text(time, style: const TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}
