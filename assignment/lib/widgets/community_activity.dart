import 'package:assignment/colors/app_color.dart';
import 'package:flutter/material.dart';

class CommunityActivity extends StatelessWidget {
  const CommunityActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.purple, Colors.red])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("البحث عن أصدقاء للمتابعة",
              style: TextStyle(
                  color: white, fontSize: 18, fontWeight: FontWeight.w600)),
          Container(
            width: 190,
            decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.horizontal(
                    start: Radius.circular(20), end: Radius.circular(20)),
                border: Border.all(color: white, width: 2)),
            child: const Center(
                child: Text(
              'البحث عن مستخدمين',
              style: TextStyle(
                  color: white, fontSize: 18, fontWeight: FontWeight.w600),
            )),
          )
        ],
      ),
    );
  }
}
