import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/pages/nav_bar_page.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({
    super.key,
    required this.userName,
    required this.passWord,
  });

  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          for (var item in userInfo) {
            if (widget.userName.text == item.userName &&
                widget.passWord.text == item.password) {
              currentUser = item;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NavBarPage(
                      users: item,
                    );
                  },
                ),
              );
              setState(() {});
            } 

            // is not working 
            // else {
            //   showDialog(
            //       context: context,
            //       builder: (context) {
            //         return const AlertDialog(
            //           title: Text(
            //             "username or password incorrect !",
            //             style: TextStyle(fontWeight: FontWeight.w300),
            //           ),
            //         );
            //       });
            // }
          }
        },
        child: const Text("Log in"),
      ),
    );
  }
}
