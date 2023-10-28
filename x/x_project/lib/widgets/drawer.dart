import 'package:flutter/material.dart';
import 'package:x_project/Screens/login.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/drawer_component.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 80, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  child: ClipOval(
                    child: Image.asset('images\\Profile.jpg'),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                  size: 18,
                )
              ],
            ),
            height24,
            const Text(
              "Miqdad Aljilwah",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Text("@LMogdad", style: TextStyle(color: Colors.grey)),
            height8,
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: "90 ", style: TextStyle(color: Colors.white)),
                  TextSpan(
                      text: "Following   ",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "1865 ", style: TextStyle(color: Colors.white)),
                  TextSpan(
                      text: "Followers", style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            height16,
            const Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            height24,
            const DrawerComp(
                icon: Icons.person_outline_rounded, text: "Profile"),
            height24,
            const DrawerComp(
                icon: Icons.workspace_premium_outlined, text: "Premium"),
            height24,
            const DrawerComp(
                icon: Icons.bookmark_border_outlined, text: "Bookmarks"),
            height24,
            const DrawerComp(icon: Icons.list_alt_rounded, text: "Lists"),
            height24,
            const DrawerComp(icon: Icons.mic_none, text: "Spaces"),
            height24,
            const DrawerComp(
                icon: Icons.monetization_on_rounded, text: "Monetisation"),
            height24,
            const Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            height24,
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false);
                },
                child: const DrawerComp(
                    icon: Icons.logout_rounded, text: "Logout")),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.dark_mode_outlined, color: Colors.white),
                Icon(Icons.privacy_tip, color: Colors.white),
                Icon(Icons.color_lens, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
