// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class TextFieldInfo extends StatelessWidget {
  TextFieldInfo(
      {super.key,
      required this.hintTextField,
      required this.isObscureText,
      //required this.hasPrefix
      required this.input});

  final String hintTextField;
  final bool isObscureText;
  //final bool hasPrefix;
  TextEditingController input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        controller: input,
        maxLines: 1,
        obscureText: isObscureText,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            //prefix: ,
            fillColor: lightGray,
            filled: true,
            hintText: hintTextField,
            hintStyle: const TextStyle(color: boldGray),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: coldGray)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: coldGray))),
      ),
    );
  }
}
