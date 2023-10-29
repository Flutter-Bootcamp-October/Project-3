import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';
import 'package:wala_plus/constants/text_styles.dart';

class BravoScreen extends StatelessWidget {
  const BravoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 332,
                color: AppColors.white,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: (const Color(0xff16be86))),
                  child: Column(
                    children: [
                      height4,
                      Image.asset(
                        "assets/img/saudi_bar_association.png",
                        width: 56,
                      ),
                      height8,
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              height12,
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '0',
                                      style: font32Bold,
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(width: 40),
                                    ),
                                    TextSpan(
                                      text: "point",
                                      style: font16w600,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      height10,
                      SizedBox(
                        width: 340,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00865a),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("lib/icons/redeem_pints.png"),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("Redeem points"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 280,
                child: Container(
                  color: const Color(0xffdadada),
                  width: 380,
                  height: 1,
                ),
              ),
              Positioned(
                top: 290,
                left: 130,
                right: 130,
                child: Container(
                  child: const Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down),
                      Text(
                        "Points Options",
                        style: font14w100,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          height22,
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transaction history",
                style: font14Bold,
              ),
            ),
          ),
          height18,
          const Text(
            "Empty List",
            style: font18w500,
          )
        ],
      ),
    );
  }
}
