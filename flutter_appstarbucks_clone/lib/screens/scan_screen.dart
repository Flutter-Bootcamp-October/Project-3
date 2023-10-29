import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          width: double.infinity, 
          child: AppBar(
            backgroundColor: Colors.white, 
            title: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          "147.18",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Futon",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 0, height: 0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Scan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 91, 30), 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 150,
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/scanstar.png', 
                    height: 100, 
                    width: 100, 
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10, height: 10),
          Text(
            "Scan to Collect Stars",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'lib/assets/images/scan.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
