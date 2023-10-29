import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/screens/bottom_sheet_screen.dart';
import 'package:flutter_appstarbucks_clone/screens/settings_screen.dart';
import 'package:flutter_appstarbucks_clone/widgets/custom_circular_progress.dart';
import 'package:flutter_appstarbucks_clone/widgets/custom_gold_container.dart';
import 'package:flutter_appstarbucks_clone/widgets/custom_reward_containar.dart';

class HomeScreen extends StatelessWidget {
  final BottomSheetScreen _bottomSheetScreen = BottomSheetScreen();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _bottomSheetScreen.showBottomSheet(context);
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 700,
              color: Colors.grey[850],
            ),
            Positioned(
              top: 270, 
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 10,
              right: 10,
              child: RewardWidget(),
            ),
            Positioned(
              top: 392,
              left: 10,
              right: 10,
              child: GoldContainer(),
            ),

            Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Good Morning Futon',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              top: 70,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Text(
                  "REWARD STARS",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.yellow[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 400,
              top: 40,
              left: 30,
              child: Row(
                children: [
                  Text(
                    '147',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child:
                        Icon(Icons.star, color: Colors.yellow[600], size: 50),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'lib/assets/images/home.star.png',
                width: 300,
                height: 300,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Icon(Icons.messenger, color: Colors.white, size: 24),
                    SizedBox(width: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SettingsScreen(),
                            ),
                          );
                        },
                        child: Icon(Icons.settings,
                            color: Colors.white, size: 24)),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              top: 170,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Collect 4 Stars for every 10 SAR spent',
                  style: TextStyle(fontSize: 17, color: Colors.grey[400]),
                ),
              ),
            ),
            
            Positioned(
              bottom: 0,
              top: 300,
              right: 20,
              child: CustomCircularProgressIndicator(
                progressValue: 0.9, 
                labelText: '',
              ),
            ),

            /*Positioned(
              bottom: 500,
              top: 100,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '103',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.star, color: Colors.yellow[600], size: 10),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
