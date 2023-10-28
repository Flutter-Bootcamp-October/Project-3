import 'package:flutter/material.dart';

const ListTile todayListTile = ListTile(
  // titleAlignment: ListTileTitleAlignment.center,
  leading: Icon(
    Icons.arrow_back_ios_sharp,
    color: Color(0xff57605d),
  ),
  title: Padding(
    padding: EdgeInsets.only(left: 101.5),
    child: Text(
      "Today",
      style: TextStyle(color: Colors.black),
    ),
  ),
  trailing: Icon(
    Icons.edit,
    color: Color(0xff57605d),
  ),
);

const Text sleep =
    Text("Sleep", style: TextStyle(fontSize: 12, color: Colors.black));
const Text sleepDuration = Text("Sleep duration",
    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black));
const Text sleepTime = Text("4h 15m",
    style: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold));
const Column sleepColumn = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 16),
    sleepDuration,
    SizedBox(height: 25),
    sleepTime,
    SizedBox(height: 10),
    Text("Today")
  ],
);

const Padding trackLiveText = Padding(
  padding: EdgeInsets.all(10.0),
  child: Align(
      alignment: Alignment.centerLeft,
      child: Text('Track Live', style: TextStyle(fontSize: 15))),
);

const Padding manuallyLogText = Padding(
  padding: EdgeInsets.all(16.0),
  child: Align(
      alignment: Alignment.centerLeft,
      child: Text('Manually log', style: TextStyle(fontSize: 15))),
);
