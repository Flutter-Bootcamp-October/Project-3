import 'package:flutter/material.dart';
import 'package:x_project/models/twitte.dart';
import 'package:x_project/widgets/view_posts/more_rows.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key, required this.twitte});
  final Twitte twitte;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: const BoxDecoration(
                  color: Color(0xff16202a),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const MoreRows(
                            iconData: Icons.mood_bad_rounded,
                            text: "Not interested in this post"),
                        const Divider(color: Colors.white),
                        MoreRows(
                          iconData: Icons.person_add_alt_1_outlined,
                          text: "follow @${twitte.usrtTag}",
                          followTag: twitte.usrtTag,
                        ),
                        const MoreRows(
                            iconData: Icons.list_alt_rounded,
                            text: "Add/remove from Lists"),
                        MoreRows(
                            iconData: Icons.volume_off_rounded,
                            text: "Mute @${twitte.usrtTag}"),
                        MoreRows(
                            iconData: Icons.block,
                            text: "Block @${twitte.usrtTag}"),
                        const Divider(
                          color: Colors.white,
                        ),
                        const MoreRows(
                            iconData: Icons.outlined_flag_sharp,
                            text: "Report Post"),
                      ]),
                ),
              );
            });
      },
      icon: const Icon(Icons.more_vert_rounded, color: Colors.grey),
    );
  }
}
