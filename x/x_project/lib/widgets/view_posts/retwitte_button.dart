import 'package:flutter/material.dart';
import 'package:x_project/models/twitte.dart';

class Rettiwtes extends StatefulWidget {
  const Rettiwtes({super.key, required this.twitte});
  final Twitte twitte;

  @override
  State<Rettiwtes> createState() => _RettiwtesState();
}

class _RettiwtesState extends State<Rettiwtes> {
  Color likesColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
          onTap: () {
            if (likesColor == Colors.grey) {
              likesColor = Colors.green;
              widget.twitte.rettiwtes++;
            } else {
              likesColor = Colors.grey;
              widget.twitte.rettiwtes--;
            }
            setState(() {});
          },
          child: Icon(Icons.repeat_outlined, color: likesColor)),
      Text("${widget.twitte.rettiwtes}",
          style: TextStyle(
              color: likesColor, fontSize: 14, fontWeight: FontWeight.bold))
    ]);
  }
}
