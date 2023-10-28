import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.posts});
  final String title;
  final String subTitle;
  final int posts;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "$posts Posts",
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
          size: 20,
        )
      ],
    );
  }
}
