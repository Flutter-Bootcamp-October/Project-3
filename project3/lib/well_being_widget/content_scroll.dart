import 'package:flutter/cupertino.dart';

import '../data/gloable.dart';
import 'content_box.dart';

class ContentScroll extends StatelessWidget {
  const ContentScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: listcontent
              .map((item) => ContentBox(
                    content: item,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
