import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/styles/custom_colors.dart';

import '../myFamily_widegts/app_bar.dart';
import '../myFamily_widegts/button_widget.dart';
import '../myFamily_widegts/images_widget.dart';

class MyFamilyScreen extends StatelessWidget {
  const MyFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AppBarMyFamily(),
      ),
      body: Column(
        children: [
          ImagesWidget(
            ulimage: 'assets/F3BF963D-CBB8-4363-A20C-8D2B9C242148.PNG',
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("No members added",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Add members from spouses, children\nand follow their health ",
                  style: TextStyle(fontSize: 16, color: Color(0xff9FB5C7))),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          ButtonWidget(text: 'Add a new member')
        ],
      ),
    );
  }
}
