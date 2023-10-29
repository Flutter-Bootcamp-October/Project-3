import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';

class StoreInfoItem extends StatelessWidget {
  const StoreInfoItem({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.iconColor,
        ),
        height12,
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Color(0xff5a5a5a)),
        )
      ],
    );
  }
}
