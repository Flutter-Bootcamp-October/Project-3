import 'package:flutter/material.dart';

class AuthFloatingButton extends StatefulWidget {
  const AuthFloatingButton({
    super.key,
    required this.content,
    required this.color,
    required this.onPressedFunc,
    required this.isDisabled,
  });
  final String content;
  final Color color;
  final Function()? onPressedFunc;
  final bool isDisabled;
  @override
  State<AuthFloatingButton> createState() => _AuthFloatingButtonState();
}

class _AuthFloatingButtonState extends State<AuthFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              disabledForegroundColor: const Color(0xFF9A9EC1),
              disabledBackgroundColor: const Color(0xFF454B94),
              backgroundColor: widget.color,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: (widget.isDisabled) ? null : widget.onPressedFunc,
          child: Text(
            widget.content,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
