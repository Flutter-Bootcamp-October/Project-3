import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/data/gloabails.dart';
import 'package:flutter_appstarbucks_clone/data/starbucks_data.dart';
import 'package:flutter_appstarbucks_clone/models/starbucks_model.dart';
import 'package:flutter_appstarbucks_clone/widgets/custom_circular_progress.dart';
//import 'package:flutter_appstarbucks_clone/widgets/custom_reward_container.dart';

class RewardScreen extends StatefulWidget {
  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  void initState() {
    if (liststar.isEmpty) {
      for (var element in datastarbucks) {
        liststar.add(Starbucks.fromJson(element));
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            top: 1,
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
            bottom: 490,
            top: 10,
            left: 30,
            child: Row(
              children: [
                Text(
                  '147.18',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Icon(Icons.star, color: Colors.yellow[600], size: 50),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 150,
            top: 80,
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
            top: 0,
            right: 20,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 20),
                  child: CustomCircularProgressIndicator(
                    progressValue: 0.9,
                    labelText: '',
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '102 ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          
          Positioned(
            bottom: 430,
            left: 10,
            right: 10,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Transform.scale(
                          scale: 1.6,
                          child: Image.asset(
                            'lib/assets/images/star1.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'No rewards yet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 8, height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Collect 250 Stars for a reward',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          
          Positioned(
            bottom: 100, 
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: liststar.map((starbucksData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          starbucksData.image,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 10),
                        Text(
                          starbucksData.title,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      starbucksData.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
