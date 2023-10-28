import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarAppointmant extends StatelessWidget {
  const AppBarAppointmant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Appointments",
            style: TextStyle(color: Colors.black, fontSize: 25)),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 2, color: Color(0xffCCD4E1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Text("REEMA AL...", style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ],
    );
  }
}
