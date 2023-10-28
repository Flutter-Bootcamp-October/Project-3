import 'package:fitbit/widgets/friends_list_widget.dart';
import 'package:flutter/material.dart';

const Icon backArrow = Icon(color: Colors.black, Icons.arrow_back_sharp);
const Text title = Text("Notifications",
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold));
const TabBar screenTabBar = TabBar(
  indicatorColor: Color(0xff007a81),
  labelStyle: TextStyle(fontWeight: FontWeight.bold),
  labelColor: Colors.black,
  tabs: [
    Tab(text: "MESSAGES"),
    Tab(text: "NOTIFICATIONS"),
  ],
);
const TabBarView barView = TabBarView(
  children: [
    Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Some messages might not be available in your list.",
            style: TextStyle(
                color: Color.fromARGB(255, 139, 139, 139), fontSize: 17),
          ),
          Text(
            "Learn more why",
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xff007a81),
                fontSize: 17),
          ),
          SizedBox(height: 40),
          Text("FRIENDS",
              style: TextStyle(
                  color: Color(0xff6f7b83),
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          FriendsList()
        ],
      ),
    ),
    Center(child: Text("No notifications to display")),
  ],
);
