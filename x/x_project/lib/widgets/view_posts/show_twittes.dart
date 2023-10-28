import 'package:flutter/material.dart';
import 'package:x_project/models/twitte.dart';
import 'package:x_project/tools/size.dart';
import 'package:x_project/widgets/view_posts/like_button.dart';
import 'package:x_project/widgets/view_posts/more_button.dart';
import 'package:x_project/widgets/view_posts/retwitte_button.dart';

class ShowTwitte extends StatefulWidget {
  const ShowTwitte({super.key, required this.twitte});
  final Twitte twitte;

  @override
  State<ShowTwitte> createState() => _ShowTwitteState();
}

class _ShowTwitteState extends State<ShowTwitte> {
  Color likesColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  widget.twitte.userPhoto,
                  height: 35,
                  width: 35,
                ),
              ),
              width8,
              Text(
                widget.twitte.usrtName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              width8,
              Text("@${widget.twitte.usrtTag}",
                  style: const TextStyle(color: Colors.grey)),
              width8,
              Text(".${widget.twitte.time}",
                  style: const TextStyle(color: Colors.grey)),
              const Spacer(),
              MoreButton(
                twitte: widget.twitte,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.twitte.twitte,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: widget.twitte.image != "None"
                  ? Image.asset(widget.twitte.image)
                  : Container(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [
                const Icon(Icons.message_outlined, color: Colors.grey),
                Text("${widget.twitte.replay}",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold))
              ]),
              Rettiwtes(twitte: widget.twitte),
              LikeButton(
                twitte: widget.twitte,
              ),
              Row(children: [
                const Icon(Icons.stacked_bar_chart_rounded, color: Colors.grey),
                Text("${widget.twitte.views}",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold))
              ]),
              const Icon(Icons.share_sharp, color: Colors.grey)
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.05,
          ),
        ],
      ),
    );
  }
}
