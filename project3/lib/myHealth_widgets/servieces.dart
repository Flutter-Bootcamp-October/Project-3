import 'package:flutter/cupertino.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
    required this.text1,
    this.text2,
    required this.luimage,
  });
  final String text1;
  final String? text2;

  final String luimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 30,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        border: Border.all(width: 1.5, color: Color(0xffD3DEF0)),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff585C70)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2!,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff585C70)),
                ),
              ],
            ),
          ),
          Positioned(
              left: 7,
              top: 30,
              child: SizedBox(
                  height: 180, width: 180, child: Image.asset(luimage)))
        ],
      ),
    );
  }
}
