import 'package:flutter/material.dart';

class OptionGrid extends StatelessWidget {
  const OptionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.grid_on_sharp),
        Icon(Icons.ondemand_video_rounded),
        Icon(Icons.person_pin_outlined)
      ],
    );
  }
}
