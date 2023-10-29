import 'package:flutter/material.dart';
import 'package:wala_plus/constants/colors.dart';
import 'package:wala_plus/constants/sizes.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 40),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                "assets/img/saudi_bar_association.png",
                width: 64,
              ),
              title: Text(
                "Welcome, لجين باوزير",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.green),
              ),
              subtitle: const Text(
                "With WalaPlus offers, save up to 30% of your salary",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            height8,
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Container(
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16.0),
                          hintText: "Search offers..",
                          hintStyle: const TextStyle(
                            color: Color(0xff989898),
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: AppColors.white,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: AppColors.iconColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        hintText: "View All",
                        hintStyle: TextStyle(
                            color: AppColors.blueText,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                        filled: true,
                        fillColor: AppColors.white,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        prefixIcon: const Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff999999),
                        ),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.blueText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
