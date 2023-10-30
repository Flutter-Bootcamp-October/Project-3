import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class AddPostAppBarProfile extends StatelessWidget {
  const AddPostAppBarProfile({super.key});

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
                  height: MediaQuery.of(context).size.height / 0.15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                            Icon(Icons.video_collection_outlined),
                            width14,
                            Text(
                              "Reel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Icon(Icons.view_module_outlined),
                            width14,
                            Text(
                              "Post",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Icon(Icons.add_circle_outline_sharp),
                            width14,
                            Text(
                              "Story",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Icon(Icons.favorite_outline_outlined),
                            width14,
                            Text(
                              "Story highlight",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Icon(Icons.online_prediction),
                            width14,
                            Text(
                              "Live",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Icon(Icons.menu_book_sharp),
                            width14,
                            Text(
                              "Guide",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        icon: Image.asset(
          "assets/add.png",
          color: black,
        ));
  }
}
