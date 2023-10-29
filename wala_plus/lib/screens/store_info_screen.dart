import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';
import 'package:wala_plus/constants/text_styles.dart';
import 'package:wala_plus/modules/modules.dart';
import 'package:wala_plus/screens/near_you_screen.dart';

import 'package:wala_plus/widgets/store_info_item.dart';

class StoreInfoScreen extends StatelessWidget {
  const StoreInfoScreen({super.key, required this.store});

  final Store store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: 320,
            color: AppColors.white,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    store.coverImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () =>
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const NearYouScreen();
                                  },
                                )),
                            child: Image.asset("assets/img/back_arrow.png")),
                        Image.asset(
                          "lib/icons/heart.png",
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 280,
                  top: 180,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffe0e0e0),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        store.image,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 64, left: 16),
                      child: Row(
                        children: [
                          Text("${store.name}", style: font18Bold),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xfff2f2f2),
                      width: 4,
                    ),
                    bottom: BorderSide(
                      color: Color(0xfff2f2f2),
                      width: 4,
                    ),
                  ),
                  color: Colors.white,
                ),
                height: 100,
                width: 390,
                child: const Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StoreInfoItem(
                        title: "Go to store page ",
                        icon: Icons.link,
                      ),
                      StoreInfoItem(
                        title: "Usage ",
                        icon: Icons.book_outlined,
                      ),
                      StoreInfoItem(
                        title: "About Store ",
                        icon: Icons.info_outline,
                      ),
                      StoreInfoItem(
                        title: "Customer support ",
                        icon: Icons.call,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 240,
            width: 390,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Offers list",
                    style: font14w600,
                  ),
                  height14,
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.discount_outlined),
                      title: Text(
                        store.discount,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  height22,
                  Divider(),
                  height12,
                  Container(
                    width: 400,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      child: const Text(
                        "Use offer",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
