import 'package:flutter/material.dart';

class StoresScreen extends StatelessWidget {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stores",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.grey),
                        onPressed: () {
                          
                        },
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Image.asset(
        'lib/assets/images/stores.jpeg', 
        fit: BoxFit.fill, 
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
