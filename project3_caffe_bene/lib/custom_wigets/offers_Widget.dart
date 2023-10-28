import 'package:flutter/material.dart';

class offersStackWidget extends StatelessWidget {
  const offersStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 125,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/offer1.jpg",
              width: 125,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          height: 45,
          width: 125,
          color: const Color.fromARGB(131, 0, 0, 0),
          child: const Text(
            "Summer refreshing drinks mohitoo",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
