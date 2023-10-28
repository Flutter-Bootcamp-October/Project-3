import 'package:flutter/cupertino.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({
    Key? key,
    required this.ulimage,
  }) : super(key: key);

  final String ulimage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, right: 150, left: 10),
          child:
              Container(height: 180, width: 180, child: Image.asset(ulimage)),
        ),
      ],
    );
  }
}
