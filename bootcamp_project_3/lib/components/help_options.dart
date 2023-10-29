import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

class HelpOptions extends StatelessWidget {
  const HelpOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f6),
      height: 450,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Version 4.16 (1236)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color(0xff8a8683),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '©Mobily 2023',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff8a8683),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'C.R. No. 7001469365',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff8a8683),
            ),
          ),
          Text(
            'VAT ID 3000000699600003',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff8a8683),
            ),
          ),
          SizedBox(height: 40),
          Text(
            'TERMS & CONDITIONS',
            style: TextStyle(
              fontSize: 16,
              color: blueTextNIconColor,
            ),
          ),
          Text(
            'PRIVACY POLICY',
            style: TextStyle(
              fontSize: 16,
              color: blueTextNIconColor,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'What do you think\n      of the app?',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border: Border.all(
                      color: blueTextNIconColor,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '👎',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border: Border.all(
                      color: blueTextNIconColor,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '👍',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SHARE THE APP ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: blueTextNIconColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Icon(
                  Icons.share,
                  color: blueTextNIconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
