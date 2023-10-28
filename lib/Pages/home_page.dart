import 'package:flutter/material.dart';
import 'package:whats_app/Pages/calls_page.dart';
import 'package:whats_app/Pages/chat_page.dart';
import 'package:whats_app/Pages/groups_page.dart';
import 'package:whats_app/Pages/update_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.photo_camera_outlined,
                  size: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (result) {
                  if (result == 5) {
                    Navigator.pushNamed(context, "SettingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry>[
                    // Add your menu items here
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        'New Group',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        'New broadcast',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        'linked device',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        'Starred messages',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            color: Color(0xFF075E55),
            child: TabBar(
              isScrollable: false,
              indicatorColor: Colors.white,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                //Tab 1
                Container(
                  width: 25,
                  child: const Tab(
                    icon: Icon(Icons.groups, color: Colors.white38),
                  ),
                ),
                //Tab2
                Container(
                  width: 80,
                  child: const Tab(
                    child: Row(
                      children: [
                        Text("Chats"),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                //tab3
                Container(
                  width: 90,
                  child: const Tab(
                    child: Text("Updates"),
                  ),
                ),
                Container(
                  width: 90,
                  child: const Tab(
                    child: Text("Calls"),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 3,
              child: TabBarView(
                children: [
                  //tab 1 groups
                  GroupsPage(),
                  //tab 2 ChatPage
                  ChatPage(),
                  //tab 3 UpdatePage
                  UpdatePage(),
                  //tab 4
                  CallsPage(),
                ],
              ))
        ]),
      ),
    );
  }
}
