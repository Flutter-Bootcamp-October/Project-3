import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class DrawerAppBarProfile extends StatelessWidget {
  const DrawerAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerButton(
      style: ButtonStyle(iconColor: MaterialStateProperty.all(black)),
      onPressed: () {
        showModalBottomSheet(
            useRootNavigator: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Container(
                decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: white),
                height: MediaQuery.of(context).size.height / 0.15,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: cold2Gray),
                        ),
                         const Row(
                          children: [
                            Icon(Icons.settings),
                            width14,
                            Text(
                              "Setting",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.alternate_email_outlined),
                            width14,
                            Text(
                              "Threads",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.query_stats_outlined),
                            width14,
                            Text(
                              "Your activity",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.restore_sharp),
                            width14,
                            Text(
                              "Archive",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.qr_code_scanner_rounded),
                            width14,
                            Text(
                              "QR code",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.people_rounded),
                            width14,
                            Text(
                              "Saved",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.people_rounded),
                            width14,
                            Text(
                              "Supervision",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.payment_rounded),
                            width14,
                            Text(
                              "Order and payments",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.playlist_add_check_circle_outlined),
                            width14,
                            Text(
                              "Close Friends",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.list),
                            width14,
                            Text(
                              "Discover people",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                         const Row(
                          children: [
                            Icon(Icons.star_border_rounded),
                            width14,
                            Text(
                              "Favorites",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}
