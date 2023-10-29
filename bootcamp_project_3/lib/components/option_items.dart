import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionItems extends StatelessWidget {
  OptionItems({super.key, required this.text});

  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
