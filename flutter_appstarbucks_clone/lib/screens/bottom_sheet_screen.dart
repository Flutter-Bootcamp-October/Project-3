import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/screens/member_level_screen.dart';
import 'package:flutter_appstarbucks_clone/screens/my_reward_screen.dart';

class BottomSheetScreen extends StatelessWidget {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DefaultTabController(
          length: 2, 
          child: Scaffold(
            backgroundColor: Colors.grey[900],
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey[900],
              title: Text('StarbucksⓇ Rewards'),
              actions: [
                IconButton(
                  icon:
                      Icon(Icons.close, color: Colors.white), 
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                ),
              ],
              bottom: TabBar(
                labelPadding: EdgeInsets.only(right: 100),
                indicatorColor: Colors.green,
                tabs: [
                  Tab(text: 'My Rewards'),
                  Tab(text: 'Member level'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
               
                RewardScreen(),
                
                MemberLevelScreen(),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Container();
  }
}
