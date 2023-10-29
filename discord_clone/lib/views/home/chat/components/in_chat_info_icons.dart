import 'package:flutter/material.dart';

import '../../../../utilities/utilities_exports.dart';

class InChatInfoIcons extends StatelessWidget {
  const InChatInfoIcons({
    super.key,
    required this.iconData,
    required this.content,
  });
  final IconData iconData;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: greyTextColor),
        Text(content, style: const TextStyle(color: greyTextColor))
      ],
    );
  }
}
