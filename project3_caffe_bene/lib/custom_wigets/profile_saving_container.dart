import 'package:flutter/material.dart';

class profileSavingContatiner extends StatelessWidget {
  const profileSavingContatiner({
    super.key,
    required this.Textentry1,
    required this.Textentry2,
    required this.backgroundcolor,
  });

  final String Textentry1;
  final String Textentry2;
  final dynamic backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 85,
      decoration: BoxDecoration(
          color: Color(backgroundcolor),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.only(right: 6, left: 6),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            Textentry1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
          Divider(
            endIndent: 4,
            indent: 4,
            thickness: 2,
            color: Colors.white,
          ),
          Text(Textentry2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
              overflow: TextOverflow.clip),
        ]),
      ),
    );
  }
}
