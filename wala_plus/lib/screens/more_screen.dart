import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';
import 'package:wala_plus/constants/text_styles.dart';
import 'package:wala_plus/widgets/more_list.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.background,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.green,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(child: Icon(Icons.notifications_outlined)),
                ),
              ],
            ),
          )),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: AppColors.lightBlue,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: AppColors.blue, width: 2),
                          ),
                        ),
                        Container(
                          height: 104,
                          width: 104,
                          decoration: BoxDecoration(
                            color: AppColors.caramel,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "ل",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 52,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                height14,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "لجين باوزير",
                      style: font16Bold,
                    ),
                  ],
                ),
                height4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "الهيئة السعودية للمحامين",
                      style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.blue,
                    )
                  ],
                ),
                height16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 174,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "ENGLISH",
                            style: TextStyle(
                                color: AppColors.green,
                                fontSize: 12,
                                fontWeight: FontWeight.w100),
                          ),
                          Text(
                            "Change Language",
                            style: TextStyle(
                                color: AppColors.blueText, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    width14,
                    Container(
                      height: 60,
                      width: 174,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("lib/icons/heart.png"),
                          Text(
                            "Favourite",
                            style: TextStyle(
                                color: AppColors.blueText, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                height8,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Column(
                      children: [
                        MoreList(
                          image: "lib/icons/transaction_history.png",
                          option: "Transaction History",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/edit.png",
                          option: "Edit Profile",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/mobile.png",
                          option: "Change mobile number",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/lock.png",
                          option: "Change password",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/interest.png",
                          option: "Edit intereste",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/mobile.png",
                          option: "Connect with us",
                        ),
                        height8,
                        Divider(),
                        MoreList(
                          image: "lib/icons/wala_plus.png",
                          option: "Knowledge and sources",
                        ),
                      ],
                    ),
                  ),
                ),
                height8,
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Row(children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Color(0xfffd6311),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Sign Out",
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
