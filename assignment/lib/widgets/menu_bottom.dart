import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  )),
              child: Container(
                  decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 0.2, color: white)),
                    color: Colors.black87,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الإعدادات",
                        style: TextStyle(color: white),
                      ),
                      width8,
                      Icon(
                        Icons.settings_outlined,
                        color: white,
                      )
                    ],
                  )),
            ),
            Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.5, color: white)),
                  color: Colors.black87,
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "مشاركة",
                      style: TextStyle(color: white),
                    ),
                    width8,
                    Icon(
                      Icons.ios_share_rounded,
                      color: white,
                    )
                  ],
                )),
            Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.3, color: white)),
                  color: Colors.black87,
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "مركز التعليمات",
                      style: TextStyle(color: white),
                    ),
                    width8,
                    Icon(
                      Icons.help,
                      color: white,
                    )
                  ],
                )),
          ],
        ));
  }
}
