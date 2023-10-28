import 'package:assignment/colors/app_color.dart';
import 'package:assignment/widgets/menu_bottom.dart';
import 'package:flutter/material.dart';

class SilvarAppBar extends StatefulWidget {
  const SilvarAppBar({
    super.key,
  });

  @override
  State<SilvarAppBar> createState() => _SilvarAppBarState();
}

class _SilvarAppBarState extends State<SilvarAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(color: amber, shape: BoxShape.circle),
          child: const Icon(
            Icons.notifications_none,
            color: black,
          ),
        )
      ],
      leading: IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const MenuBottom();
              },
            );
          },
          icon: const Icon(Icons.more_horiz)),
      backgroundColor: black,
      expandedHeight: 200,
      floating: false,
      snap: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('profile'),
        centerTitle: true,
        background: Image.asset(
          "assets/tv_show/S (1).jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
