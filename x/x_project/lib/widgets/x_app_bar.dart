import 'package:flutter/material.dart';
import 'package:x_project/tools/colors.dart';

class XAppBar extends StatelessWidget {
  const XAppBar(
      {super.key,
      required this.title,
      required this.tabs,
      required this.acrions});
  final Widget title;
  final List<Tab> tabs;
  final List<Widget> acrions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: const Icon(
        Icons.account_circle,
        color: Color(0xffc9d4da),
        size: 30,
      ),
      title: title,
      centerTitle: true,
      actions: acrions,
      bottom: TabBar(
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: tabs,
      ),
    );
  }
}
