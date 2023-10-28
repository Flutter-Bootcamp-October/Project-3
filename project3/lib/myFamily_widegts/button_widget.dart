import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff007EC6),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        )),
      ),
    );
  }
}
