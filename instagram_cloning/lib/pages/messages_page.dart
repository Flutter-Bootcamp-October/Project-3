import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/widgets/messages_widget.dart/app_bar_messages.dart';
import 'package:instagram_cloning/widgets/messages_widget.dart/messages_info.dart';
import 'package:instagram_cloning/widgets/search_widget/search_textfield.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarMessages(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: const [
              SearchTextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: black),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: boldGray),
                  )
                ],
              ),
              height14,
              MessagesInfo(
                image: "assets/profile_pic_2.png",
                userMessage: "MR",
                messg: "hhhhhhhhhhh your so funny!!",
              ),
              height12,
              MessagesInfo(
                image: "assets/profile_pic_4.png",
                userMessage: "lucy_e4",
                messg: "hey Whatsaaap",
              ),
              height12,
              MessagesInfo(
                image: "assets/profile_pic_6.png",
                userMessage: "SR___89",
                messg: "come OVER!",
              )
            ],
          ),
        ),
      ),
    );
  }
}
