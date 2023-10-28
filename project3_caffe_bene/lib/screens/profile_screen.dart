import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/appBar_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/profile_point_container.dart';
import 'package:project3_caffe_bene/custom_wigets/profile_saving_container.dart';
import 'package:project3_caffe_bene/custom_wigets/promocode_container.dart';
import 'package:project3_caffe_bene/custom_wigets/settings_widget.dart';
import 'package:project3_caffe_bene/custom_wigets/settings_widget2.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context, cart: false, back: false),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Ruba Hil !",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Level: Silver",
                    style: TextStyle(fontSize: 16, color: Color(0xff959595)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1pVjsQEqFQeXp3mOzNPuAMBNflQsedQCJA&usqp=CAU',
                    height: 100,
                  ),
                ),
                Positioned(
                  left: 312,
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    width: 85,
                    decoration: const BoxDecoration(
                        color: Color(0xff6f584c),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25))),
                    child: const Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        profileSavingContatiner(
                          Textentry1: '43',
                          Textentry2: 'TOTAL SAVING',
                          backgroundcolor: 0xff6c554a,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        profileSavingContatiner(
                            Textentry1: '0',
                            Textentry2: 'TOTAL SAVING LAST 30 DAYS',
                            backgroundcolor: 0xff624f4c),
                        SizedBox(
                          width: 15,
                        ),
                        profileSavingContatiner(
                            Textentry1: '3',
                            Textentry2: 'NUMBER OF VISITS ',
                            backgroundcolor: 0XFF71655B),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const ProfilePointContainer(),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: PromoCodeContainer(),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                      children: [
                        settingsWidget(
                            Textentry1: 'Wallet Balance',
                            Textentry2: '0.00 SAR'),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget(
                      Textentry1: 'Language',
                      Textentry2: 'English',
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget2(
                      Textentry1: 'Edit Profile',
                      icon: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget2(
                      Textentry1: 'My Orders',
                      icon: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget2(
                      Textentry1: 'My Addresses',
                      icon: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget2(
                      Textentry1: 'My Cars',
                      icon: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: settingsWidget2(
                      Textentry1: 'Log out',
                      icon: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
