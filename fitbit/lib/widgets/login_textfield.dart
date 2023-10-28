import 'package:fitbit/consts/login_consts.dart';
import 'package:fitbit/global/user.dart';
import 'package:flutter/material.dart';

class LoginTextFeild extends StatefulWidget {
  const LoginTextFeild({
    super.key,
    required this.label,
    required this.hint,
    required this.hideInput,
  });
  final String label;
  final String hint;
  final bool hideInput;

  @override
  State<LoginTextFeild> createState() => _LoginTextFeildState();
}

class _LoginTextFeildState extends State<LoginTextFeild> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.label, style: loginLabelStyle)),
          TextField(
            controller: !widget.hideInput ? usernameController:TextEditingController(),
            obscureText: !hide,
            decoration: InputDecoration(
              suffixIconColor: Colors.grey,
              suffixIcon: Visibility(
                visible: widget.hideInput,
                child: IconButton(
                    onPressed: () {
                      hide = !hide;
                      setState(() {});
                    },
                    icon: hide
                        ? const Icon(Icons.remove_red_eye_outlined)
                        : const Icon(Icons.visibility_off)),
              ),
              hintStyle: hintTextStyle,
              hintText: widget.hint,
            ),
          ),
        ],
      ),
    );
  }
}
