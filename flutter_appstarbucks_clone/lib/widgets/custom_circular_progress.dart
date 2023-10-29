import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double progressValue;
  final String labelText;

  CustomCircularProgressIndicator({
    required this.progressValue,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      right: 40,
      child: FractionalTranslation(
        translation: Offset(0.4, 0.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              child: CircularProgressIndicator(
                value: progressValue,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow[600]!),
                strokeWidth: 8,
                strokeCap: StrokeCap.round,
              ),
            ),
            Image.asset(
              'lib/assets/images/cupstar.png',
              width: 80,
              height: 80,
            ),
           /* Positioned(
              bottom: -10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '103',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        '103',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.star, color: Colors.yellow[600], size: 18),
                    ],
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
