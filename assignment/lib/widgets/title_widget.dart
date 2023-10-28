import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.titles,
  });

  final String titles;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        Text(titles,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
      ],
    );
  }
}
