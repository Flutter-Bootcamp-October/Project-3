import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/app_data.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({
    super.key,
    required this.app,
  });
  final Appdata app;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                app.image,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                app.name,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'valid until ${app.date}',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Change',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff5c8c98),
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}
