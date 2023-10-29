import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';

class CategoryTaps extends StatelessWidget {
  const CategoryTaps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            border: const Border(
              bottom: BorderSide(color: Color(0xff424242), width: 1),
            ),
          ),
          width: 195,
          height: 48,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Offers/Discounts",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.white,
          width: 195,
          height: 48,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vouchers",
                style: TextStyle(
                  color: Color(0xffb5b5b5),
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
