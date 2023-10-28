import 'package:flutter/cupertino.dart';

class CardWeatherWidget extends StatelessWidget {
  const CardWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 390,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Color(0xffDEEBF1), Color(0xffEFF4F8)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("It's Cloudy today !",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              ],
            ),
          ),
          Positioned(
              left: 120,
              child: SizedBox(
                height: 120,
                width: 300,
                child: Opacity(
                    opacity: .80, child: Image.asset("assets/image 2.png")),
              )),
          Positioned(
            top: 65,
            left: 15,
            child: Text("Enjoy your day and go for a walk",
                style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
