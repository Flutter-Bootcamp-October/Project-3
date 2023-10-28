import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';
import 'package:jahez/widgets/more_screen/more_screen_container.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19.0),
        child: ListView(children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Juman",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 38.0),
                child: MoreScreenContainer(
                  text: 'My Account',
                  icon: Icons.person_4_outlined,
                ),
              ),
              higth23,
              MoreScreenContainer(
                text: 'Wallet',
                icon: Icons.account_balance_wallet_outlined,
                moreText: "SAR 0.00",
              ),
              higth23,
              MoreScreenContainer(
                text: 'Payments',
                icon: Icons.payments,
              ),
              higth23,
              MoreScreenContainer(
                text: 'Prime',
                icon: Icons.check_circle_outline_sharp,
              ),
              higth23,
              MoreScreenContainer(
                text: 'Alexa',
                icon: Icons.abc,
              ),
              higth23,
              MoreScreenContainer(
                text: 'Contact Us',
                icon: Icons.contact_support_outlined,
              ),
              higth23,
              MoreScreenContainer(
                text: 'About Jahez',
                icon: Icons.blur_circular_rounded,
              ),
              higth23,
              MoreScreenContainer(
                text: 'Privacy Policy',
                icon: Icons.privacy_tip_outlined,
              ),
              higth23,
              MoreScreenContainer(
                text: 'Change Language',
                icon: Icons.language,
                moreText: "العربية",
              ),
              higth23,
              MoreScreenContainer(
                text: 'Logout',
                icon: Icons.logout_outlined,
              ),
              higth23,
              Center(
                child: Text(
                  "Version 412.4",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 80, 85, 89)),
                ),
              ),
              higth23,
            ],
          ),
        ]),
      ),
    );
  }
}
