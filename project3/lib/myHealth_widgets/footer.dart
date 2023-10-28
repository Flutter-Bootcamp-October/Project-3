import 'package:flutter/cupertino.dart';

class footer extends StatelessWidget {
  const footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 250),
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Supported By"), Image.asset("assets/image 10.png")],
        ),
      ),
    );
  }
}
