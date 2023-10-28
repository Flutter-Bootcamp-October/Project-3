import 'package:clone_app/Screens/wedgets/icons_continer.dart';
import 'package:flutter/material.dart';

class TransationsScreen extends StatefulWidget {
  const TransationsScreen({super.key});

  @override
  State<TransationsScreen> createState() => _TransationsScreenState();
}

class _TransationsScreenState extends State<TransationsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      
      
      body:Column(children: [
        Column(children: [

        
        ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
          child: Container(color: Color(0xff005596),width: 400,height: 200,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text("Transfer",style: TextStyle(color: Colors.white),),
              
            )
            ,Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
               IconsContiner(Icons.blur_circular_outlined, Color(0xff8064f6),
                  "التحويل الدولي"),
                  Padding(
                    padding: const EdgeInsets.only(left:4,right: 4),
                    child: IconsContiner(Icons.change_circle_outlined, Color(0xff009aed),
                    "تحويل محلي"),
                  ),
                  IconsContiner(Icons.wallet, Color(0xfff25c82),
                  "فواتير سداد"),
            ],),
            
            
          ],),
          
          )),
          ],),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("الاكثر استخداما",style: TextStyle(fontSize: 17),),
          )
         ],),
      
         SizedBox(
          width: 400,
          height: 300,
           child: ListView.builder(itemCount: 20,itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(children: [
                      Text("م**** ا ****ء"),
                      Text("+966546604694",style: TextStyle(fontSize: 10,color: Color(0xff7e8389)),)
                    ],),
                    IconText("م",Color(0xff993363))
                ],),
              );
           },),
         )
      ],
      ) 
      
      
      );
  }
}