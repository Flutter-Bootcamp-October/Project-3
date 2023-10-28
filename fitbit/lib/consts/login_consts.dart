import 'package:fitbit/widgets/login_textfield.dart';
import 'package:flutter/material.dart';

const TextStyle loginLogoStyle =
    TextStyle(color: Colors.black, fontSize: 32, fontFamily: 'System-Regular');
const TextStyle starterQouteStyle = TextStyle(
  color: Colors.black,
  fontSize: 26,
  fontFamily: 'System-Regular',
);
const ListTile logo = ListTile(
  minLeadingWidth: 1,
  leading: Icon(size: 30, color: Colors.black, Icons.fitbit),
  title: Align(
    alignment: Alignment(-1.5, 0),
    child: Text(
      "fitbit",
      style: loginLogoStyle,
    ),
  ),
);

const loginText = Text(
  "Sign In",
  style: TextStyle(color: Colors.black, fontSize: 20),
);

const Padding logoWithPadding = Padding(
  padding: EdgeInsets.only(top: 5.0, left: 75),
  child: logo,
);

const Padding logotextWithPadding = Padding(
    padding: EdgeInsets.only(left: 8, right: 4, top: 8, bottom: 20),
    child: loginText);

const TextStyle loginLabelStyle =
    TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 12);
const TextStyle hintTextStyle = TextStyle(fontSize: 12);

const LoginTextFeild emailTextField = LoginTextFeild(
  label: 'EMAIL ADDRESS',
  hint: 'Your account email',
  hideInput: false,
);

const LoginTextFeild passwordTextField = LoginTextFeild(
  label: 'PASSWORD',
  hint: 'Enter your secure password',
  hideInput: true,
);

const Text forgotPassword = Text(
  "Forgot your password?",
  style: TextStyle(fontSize: 13),
);

const Text buttonText = Text("SIGN IN", style: TextStyle(color: Colors.grey));
