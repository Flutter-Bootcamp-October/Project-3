import 'package:assignment/colors/app_color.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    super.key,
    this.onPressed,
    required this.icons,
    required this.named,
    required this.isSelect,
  });

  final Function()? onPressed;
  final IconData icons;
  final String named;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 10,
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(icons, color: isSelect ? white : Colors.white38),
          Text(
            named,
            style: TextStyle(color: isSelect ? white : Colors.white38),
          )
        ],
      ),
    );
  }
}
