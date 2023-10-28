import 'package:fitbit/data/data.dart';
import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return ListTile(
          titleTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          leading: Image.asset(friends[index]["image"]),
          title: Text(friends[index]["name"]),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                friends[index]["message"],
                style: const TextStyle(color: Colors.black),
              ),
              Text(friends[index]["time"])
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
        );
      },
    );
  }
}
