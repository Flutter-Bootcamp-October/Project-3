import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

class RechargeButton extends StatelessWidget {
  const RechargeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 224, top: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: Size(0, 48),
          backgroundColor: blueButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Recharge 💳',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
