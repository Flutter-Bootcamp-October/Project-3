import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/data/model.dart';

import '../styles/custom_colors.dart';

class ContentsScreen extends StatelessWidget {
  const ContentsScreen({super.key, required this.content});
  final Educational content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Educational Content",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          fit: StackFit.expand,
          children: [
            Container(
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xffFBFCFF),
                  border: Border.all(width: 1, color: Color(0xffC9D5EC)),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          content.title,
                          style: TextStyle(
                              color: bold,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          content.introduction,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          content.topic1,
                          style: TextStyle(
                              color: green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          content.content1,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          content.topic2,
                          style: TextStyle(
                              color: green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          content.content2,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
