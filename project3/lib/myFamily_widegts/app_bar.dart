import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarMyFamily extends StatelessWidget {
  const AppBarMyFamily({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("My Family",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          width: 30,
        ),
        Text("Member Requests", style: TextStyle(color: Colors.blue)),
        Icon(
          Icons.person_pin_outlined,
          color: Colors.blue,
        )
      ],
    );
  }
}
