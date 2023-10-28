import 'package:flutter/material.dart';
import 'package:whats_app/custom%20widget/custome_list_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: const Text(
          "Settings",
          style: TextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/profile1.jpeg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bader",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 9),
                          Text(
                            "Hey there",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: const Icon(
                        Icons.qr_code_2_sharp,
                        color: Color(0xFF075E55),
                        size: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Container(
                        child: const Icon(
                      Icons.access_time_outlined,
                      color: Color(0xFF075E55),
                      size: 28,
                    )),
                  ],
                ),
              ),
              const Divider(),
              const CustomListTile(
                icon: Icons.key,
                title: "Account",
                subtitle: "Security notifications, change number",
              ),
              const CustomListTile(
                icon: Icons.lock_rounded,
                title: "Privacy",
                subtitle: "Block contacts dis appearing messages",
              ),
              const CustomListTile(
                icon: Icons.face_4,
                title: "Avatar",
                subtitle: "Create, edit, profile photo",
              ),
              const CustomListTile(
                icon: Icons.chat_rounded,
                title: "Chats",
                subtitle: "Theme, wallpapers, chat history",
              ),
              const CustomListTile(
                icon: Icons.notifications,
                title: "Notifications",
                subtitle: "Message, group & call tones",
              ),
              const CustomListTile(
                icon: Icons.data_usage,
                title: "Storage and Data",
                subtitle: "Network usage, auto-download",
              ),
              const CustomListTile(
                icon: Icons.language,
                title: "App Language",
                subtitle: "English(device's language)",
              ),
              const CustomListTile(
                icon: Icons.help_outline_rounded,
                title: "Help and Support",
                subtitle: "Help centre, contact us, privacy policy",
              ),
              const CustomListTile(
                icon: Icons.group,
                title: "Invite a Friend",
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.coffee), // Replace with the desired icon
                        Text(
                          "Meta",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
