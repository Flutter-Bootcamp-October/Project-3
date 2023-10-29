import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/widgets/member_level_section.dart';


class MemberLevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/memberlevel.jpeg',
                  height: 400,
                  width: 400,
                ),
                Text(
                  'Gold Level',
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Gold level is reached at 750 Stars. As a Gold member you get a Free Drink on your birthday, and will enjoy exclusive tailored offers and benefits.',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                CustomMemberLevel(), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
