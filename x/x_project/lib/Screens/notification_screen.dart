import 'package:flutter/material.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/tools/size.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        title: const Text("Notifications"),
        actions: const [
          Icon(Icons.settings_outlined, color: Colors.white),
          width8,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(shrinkWrap: true, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                  child: SizedBox(
                      height: 50, child: Image.asset('images\\Profile.jpg'))),
              width8,
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Your post has received a "Like" from @LMogdad',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.05,
          )
        ]),
      ),
    );
  }
}
