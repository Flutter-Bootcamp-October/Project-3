import 'package:flutter/material.dart';

class FollowerContainer extends StatelessWidget {
  const FollowerContainer({
    super.key,
    required this.count,
    required this.named,
  });
  final String count;
  final String named;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(color: Colors.white),
          ),
          Text(named, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
