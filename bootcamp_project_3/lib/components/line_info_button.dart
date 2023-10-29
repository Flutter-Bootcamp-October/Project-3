import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

class LineInfoButton extends StatelessWidget {
  const LineInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      height: 60,
      child: Center(
        child: Text(
          'LINE INFORMATION',
          style: TextStyle(
            color: blueTextNIconColor,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
