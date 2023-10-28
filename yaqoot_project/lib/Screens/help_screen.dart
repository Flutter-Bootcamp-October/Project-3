import 'package:flutter/material.dart';
import 'package:yaqoot_project/Widgets/appbar/app_bar.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class Helpscreen extends StatelessWidget {
  const Helpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, false),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 20,
              child: const Row(
                children: [
                  Icon(
                    Icons.live_help_outlined,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'FAQ',
                    style: TextStyle(
                        color: purpul,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: purpul,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 400,
              height: 20,
              child: const Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Open Ticket',
                    style: TextStyle(
                        color: purpul,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: purpul,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
