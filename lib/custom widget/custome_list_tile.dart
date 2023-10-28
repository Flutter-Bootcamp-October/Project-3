import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;

  const CustomListTile({
    required this.icon,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 6,
        ),
        child: Icon(
          icon,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            )
          : null,
    );
  }
}
