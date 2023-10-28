import 'package:flutter/material.dart';

Container ChangeAbleIcon(IconData icon, Color color, double size) {
  // Now takes an IconData and a Color
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      color: color, // Using the color parameter
    ),
    child: Icon(
      icon, // Using the icon parameter
      color: Colors.white,
      size: size, // you can also make this a parameter if needed
    ),
  );
}

Container IconWithText(IconData icon, Color color, double size) {
  // Now takes an IconData and a Color
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      color: color, // Using the color parameter
    ),
    child: Icon(
      icon, // Using the icon parameter
      color: Colors.white,
      size: size, // you can also make this a parameter if needed
    ),
  );
}


Container FullCostomIcon(IconData icon,Color iconcolor, Color color) {
  // Now takes an IconData and a Color
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      color: color, // Using the color parameter
    ),
    child: Icon(
      icon, // Using the icon parameter
      color: iconcolor,
      size: 14, // you can also make this a parameter if needed
    ),
  );
}


  Column BuyIcons(IconData icon,String text) {
    return Column(children: [
ClipRRect(
        borderRadius: BorderRadius.circular(70),
        child: Container(color: Color(0xffe8489b),width: 50,height: 50,
        child: Icon(icon,color: Colors.white,),),
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text("$text",style: TextStyle(fontSize: 12),),
      )
      ],);
  }