import 'package:flutter/cupertino.dart';

class SoftLaunch extends StatelessWidget {
  const SoftLaunch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xffECF2F9),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(width: 1.5, color: Color(0xff3C8EC7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Soft launch",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Please rate the services offered in the soft launch.",
              style: TextStyle(color: Color(0xff3C8DC7), fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
