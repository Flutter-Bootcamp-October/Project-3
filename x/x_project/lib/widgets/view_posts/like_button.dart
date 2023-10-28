import 'package:flutter/material.dart';
import 'package:x_project/models/twitte.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key, required this.twitte});
  final Twitte twitte;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  Color likesColor = Colors.grey;
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
          onTap: () {
            if (likesColor == Colors.grey) {
              likesColor = Colors.red;
              icon = Icons.favorite;
              widget.twitte.likes++;
            } else {
              likesColor = Colors.grey;
              icon = Icons.favorite_border;
              widget.twitte.likes--;
            }
            setState(() {});
          },
          child: Icon(icon, color: likesColor)),
      Text("${widget.twitte.likes}",
          style: TextStyle(
              color: likesColor, fontSize: 14, fontWeight: FontWeight.bold))
    ]);
  }
}
