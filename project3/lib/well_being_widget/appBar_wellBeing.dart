import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWellBeing extends StatelessWidget {
  const AppBarWellBeing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, top: 10),
      child: Text("Well-being",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}
