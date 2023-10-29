import 'package:flutter/material.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(
          "New Post",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
