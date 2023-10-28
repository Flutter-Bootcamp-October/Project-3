import 'package:flutter/material.dart';
import 'package:x_project/data/globals.dart';
import 'package:x_project/tools/size.dart';

class MoreRows extends StatefulWidget {
  const MoreRows(
      {super.key,
      required this.iconData,
      required this.text,
      this.followTag = ''});
  final IconData iconData;
  final String text;
  final String followTag;

  @override
  State<MoreRows> createState() => _MoreRowsState();
}

class _MoreRowsState extends State<MoreRows> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.followTag.isNotEmpty) {
          followingList.add(widget.followTag);
        }
        color = Colors.green;
        setState(() {});
      },
      child: Row(
        children: [
          Icon(
            widget.iconData,
            color: color,
          ),
          width16,
          Text(
            widget.text,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
