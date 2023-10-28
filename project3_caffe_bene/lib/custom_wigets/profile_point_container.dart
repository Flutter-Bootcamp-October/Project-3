import 'package:flutter/material.dart';

class ProfilePointContainer extends StatelessWidget {
  const ProfilePointContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 55,
          width: 145.5,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Color(0xff6f584c))),
          child: const Text(
            "Points: 1110",
            style: TextStyle(color: Color(0xff6f584c)),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 55,
          width: 145.5,
          decoration: BoxDecoration(
              color: Color(0xff6f584c),
              borderRadius: BorderRadius.circular(35)),
          child: const Text(
            "Redeen Now",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
