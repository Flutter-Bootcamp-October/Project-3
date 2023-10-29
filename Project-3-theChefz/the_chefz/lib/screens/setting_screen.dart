import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff73596e),
          ),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Color(0xff73596e)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Notification",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff575757)),
                    ),
                    Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        })
                  ])),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "App Language",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff575757)),
                    ),
                    Text(
                      "English",
                      style: TextStyle(color: Color(0xff886176), fontSize: 17),
                    )
                  ])),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Change Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff575757)),
                    ),
                    Icon(
                      Icons.lock,
                      color: Color(0xff886176),
                    ),
                  ])),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff575757)),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(
                      Icons.logout,
                      color: Color(0xff886176),
                    ),
                  ])),
          const Spacer(),
          Container(
              width: MediaQuery.sizeOf(context).width - 20,
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff4f4f4),
                  textStyle: const TextStyle(fontSize: 18),
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.grey),
                ),
              ))
        ]),
      ),
    );
  }
}
