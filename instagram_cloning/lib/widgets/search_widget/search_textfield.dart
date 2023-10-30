import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        cursorColor: coldGray,
        decoration: InputDecoration(
            fillColor: coldGray,
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: boldGray,
            ),
            hintText: "Search",
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: coldGray)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: coldGray))),
      ),
    );
  }
}
