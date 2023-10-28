import 'package:assignment/widgets/follower_widget.dart';
import 'package:flutter/material.dart';

class RowFollower extends StatelessWidget {
  const RowFollower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FollowerContainer(
          count: '0',
          named: 'comments',
        ),
        FollowerContainer(
          count: '0',
          named: 'Following',
        ),
        FollowerContainer(
          count: '0',
          named: 'Followers',
        ),
      ],
    );
  }
}