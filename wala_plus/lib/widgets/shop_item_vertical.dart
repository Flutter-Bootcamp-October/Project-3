import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';

class ShopItemVertical extends StatelessWidget {
  const ShopItemVertical(
      {super.key, required this.image, required this.shopName});
  final String image;
  final String shopName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              shopName,
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.blueText,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
