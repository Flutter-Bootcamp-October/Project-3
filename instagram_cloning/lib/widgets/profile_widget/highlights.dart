import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: cold2Gray),
                    shape: BoxShape.circle),
                child: const Icon(Icons.add),
              ),
              height10,
              const Text("New")
            ],
          ),
          width16,
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    color: coldGray, shape: BoxShape.circle),
              ),
              height10,
              const Text("")
            ],
          ),
          width16,
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    color: coldGray, shape: BoxShape.circle),
              ),
              height10,
              const Text("")
            ],
          ),
          width16,
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    color: coldGray, shape: BoxShape.circle),
              ),
              height10,
              const Text("")
            ],
          ),
          width16,
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    color: coldGray, shape: BoxShape.circle),
              ),
              height10,
              const Text("")
            ],
          )
        ],
      ),
    );
  }
}
