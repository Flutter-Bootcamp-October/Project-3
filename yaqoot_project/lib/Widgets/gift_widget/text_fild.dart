import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class TextFild extends StatelessWidget {
  const TextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search in Yaqoot",
                  hintStyle: const TextStyle(
                      color: grey, fontSize: 16, fontWeight: FontWeight.w800),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: white),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          'Filter',
          style: TextStyle(
              color: purpul,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
