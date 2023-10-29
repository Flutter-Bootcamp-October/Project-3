import 'package:flutter/material.dart';

class CustomMemberLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Benefits',
              style: TextStyle(  
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 220), 
            Text(
              'Green',
              style: TextStyle(
                color: Colors.green[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 40), 
            Text(
              'Gold',
              style: TextStyle(
                color: Colors.yellow[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 60,
          color: Colors.grey[800],
          child: Row(
            children: [
              Text(
                "Free Drink for every",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 180),
              Icon(
                Icons.check_circle_rounded,
                color: Colors.green[800],
                size: 24,
              ),
              SizedBox(width: 30),
              Icon(
                Icons.check_circle_rounded,
                color: Colors.yellow[700],
                size: 24,
              ),
            ],
          ),
        ),
        SizedBox(width: 10, height: 10),
        Row(
          children: [
            Text(
              "Free Drink on Your Birthday",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 190),
            Icon(
              Icons.check_circle_rounded,
              color: Colors.yellow[700],
              size: 24,
            ),
          ],
        ),
        SizedBox(width: 10, height: 10),
        Container(
          height: 60,
          color: Colors.grey[800],
          child: Row(
            children: [
              Text(
                "Exclusive tailored offers",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 210),
              Icon(
                Icons.check_circle_rounded,
                color: Colors.yellow[700],
                size: 24,
              ),
            ],
          ),
        ),
        SizedBox(width: 10, height: 10),
        Row(
          children: [
            Text(
              "Bonus Star Offers",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 250),
            Icon(
              Icons.check_circle_rounded,
              color: Colors.yellow[700],
              size: 24,
            ),
          ],
        ),
      ],
    );
  }
}
