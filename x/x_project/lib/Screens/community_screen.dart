import 'package:flutter/material.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/tools/size.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.account_circle,
          color: Color(0xffc9d4da),
          size: 30,
        ),
        title: const Text("Communities"),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          width16,
          Icon(Icons.group_add_outlined, color: Colors.white),
          width8
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Discover new Communities",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                height24,
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(15),
                      child: Image.asset(
                        'images\\TA.jpg',
                        height: 90,
                      ),
                    ),
                    width8,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("اكادمية طويق",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Text("7554 Members",
                            style: TextStyle(color: Colors.white)),
                        height8,
                        Row(
                          children: [
                            SizedBox(
                                height: 30,
                                child: ClipOval(
                                    child: Image.asset('images\\Profile.jpg'))),
                            SizedBox(
                                height: 30,
                                child: ClipOval(
                                    child:
                                        Image.asset('images\\userImage4.jpg'))),
                            SizedBox(
                                height: 30,
                                child: ClipOval(
                                    child:
                                        Image.asset('images\\userImage2.jpeg')))
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
