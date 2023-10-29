import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

class StartDetails extends StatelessWidget {
  const StartDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'USAGE DETAILS',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: blueButtonColor,
            ),
          ),
          Icon(
            Icons.arrow_right,
            color: blueTextNIconColor,
          ),
        ],
      ),
    );
  }
}
