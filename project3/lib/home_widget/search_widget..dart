import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project3/styles/custom_colors.dart';
import '../styles/custom_colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 354,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          textAlign: TextAlign.justify,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 16, color: Color(0xffC8C8C8)),
            hintText: ' Search for anything eg: chack',
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Color(0xffDCEAF5),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.search, color: Color(0xff007BC3))),
            ),
          ),
        ),
      ),
    );
  }
}
