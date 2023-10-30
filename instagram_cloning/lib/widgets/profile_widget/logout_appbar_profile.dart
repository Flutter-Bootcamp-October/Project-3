import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/pages/login_page.dart';

class LogoutAppBarProfile extends StatelessWidget {
  const LogoutAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
              useRootNavigator: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: white),
                  height: MediaQuery.of(context).size.height / 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: cold2Gray),
                        ),
                        height12,
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            },
                            child: Text(
                              "Log out ${currentUser.userName}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )),
                        const Divider(),
                      ],
                    ),
                  ),
                );
              });
        },
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
        ));
  }
}
