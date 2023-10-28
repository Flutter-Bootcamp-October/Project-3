
import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(
                  color: white,
                  AssetImage('lib\\assets\\icons\\whatsapp (1).png'),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(
                  color: white,
                  AssetImage('lib\\assets\\icons\\instagram.png'),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(
                  color: white,
                  AssetImage('lib\\assets\\icons\\twitter.png'),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(
                  color: white,
                  AssetImage('lib\\assets\\icons\\envelope.png'),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(
                  color: white,
                  AssetImage('lib\\assets\\icons\\headset.png'),
                ),
              )),
        ),
      ],
    );
  }
}
