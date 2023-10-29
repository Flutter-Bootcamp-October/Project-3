import 'package:flutter/material.dart';
import 'package:flutter_appstarbucks_clone/data/gloabails.dart';
import 'package:flutter_appstarbucks_clone/data/info_data.dart';
import 'package:flutter_appstarbucks_clone/models/info_model.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  void initState() {
    if (listinfo.isEmpty) {
      for (var element in datainfo) {
        listinfo.add(Information.fromJson(element));
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    Information personalInfo =
        listinfo.isNotEmpty ? listinfo[0] : Information();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Info',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'First Name',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8, width: 8),
            Text(
              personalInfo.firstName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.grey[700],
            ),
            SizedBox(height: 20, width: 20),
            Text(
              'Last Name',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8, width: 8),
            Text(
              personalInfo.lastName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.grey[700],
            ),
            SizedBox(height: 20, width: 20),
            Text(
              'Email Address',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8, width: 8),
            Text(
              personalInfo.emailAddress,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.grey[700],
            ),
            SizedBox(height: 20, width: 20),
            Text(
              'Birthday',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20, width: 20),
            Row(
              children: [
                Text(
                  personalInfo.birthMonth,
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  color: Colors.grey[700],
                ),
                SizedBox(height: 100, width: 100),
                Text(
                  '   ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  personalInfo.birthDay,
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  color: Colors.grey[700],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
