import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(98, 228, 225, 225),
      width: context.getWidithSizing(number: 0.8),
      height: context.getHeightSizing(number: 0.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 0.5,
                color: const Color.fromARGB(255, 192, 192, 192),
              ),
            ),
            width: context.getWidithSizing(number: 0.8),
            height: context.getHeightSizing(number: 0.5),
            child: child),
      ),
    );
  }
}