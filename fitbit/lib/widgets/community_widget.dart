import 'package:fitbit/data/data.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: context.getHeightSizing(number: .2),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: community.length,
          itemBuilder: (context, index) {
            return Image.asset(community[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(width: 0),
        ),
      ),
    );
  }
}
