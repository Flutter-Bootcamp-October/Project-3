import 'package:flutter/material.dart';
import 'package:the_chefz/screens/setting_screen.dart';
import 'package:the_chefz/widgets/card_profile.dart';
import 'package:the_chefz/widgets/list_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: Color(0xfff35b3c),
              ),
            ),
          )
        ],
        title: const Text(
          "My Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff57163d),
              fontSize: 17),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(color: Colors.orange[700]),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                Text(
                  "Arwa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Icon(
                    Icons.edit_square,
                    color: Color(0xff694d65),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardProfile(
                  image: 'assets/images/wallet.png',
                  name: 'Wallet',
                  number: '0.00 SR',
                ),
                CardProfile(
                  image: 'assets/images/points.png',
                  name: 'Points',
                  number: '0',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Column(
              children: [
                ListProfile(
                  profileName: "Payment Cards",
                  profileImage: "assets/images/credit-card.png",
                ),
                Divider(),
                ListProfile(
                  profileName: "My Favourite",
                  profileImage: "assets/images/heart.png",
                ),
                Divider(),
                ListProfile(
                  profileName: "Contact us",
                  profileImage: "assets/images/contactUs.png",
                ),
                Divider(),
                ListProfile(
                  profileName: "Share App",
                  profileImage: "assets/images/link.png",
                ),
                Divider(),
                ListProfile(
                  profileName: "FAQ",
                  profileImage: "assets/images/FAQ.png",
                ),
                Divider(),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                "The Chefz Version 9.50.4",
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
