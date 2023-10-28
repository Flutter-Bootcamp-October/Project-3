import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/model.dart';
import '../screens/Contents_screen.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({super.key, required this.content});
  final Educational content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentsScreen(
                        content: content,
                      )));
        },
        child: Container(
          padding: EdgeInsets.only(top: 115),
          height: 200,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Color(0xffA4B1C3),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(10),
            width: 200,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomLeft: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  content.title,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
