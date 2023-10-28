import 'package:clone_app/Screens/wedgets/change_able_icon.dart';
import 'package:clone_app/Screens/wedgets/icons_continer.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
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
              child: Text("المزيد من الخيارات",style: TextStyle(color: Colors.white),),
              
            )
            ,Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
               IconsContiner(Icons.people_alt, Color(0xff84ce5c),
                  " المستفيدون"),
                  Padding(
                    padding: const EdgeInsets.only(left:4,right: 4),
                    child: IconsContiner(Icons.star_border_purple500_outlined, Color(0xffffae77),
                    " دعوة الاصدقاء"),
                  ),
                  IconsContiner(Icons.compare_arrows_sharp, Color(0xff61d1fe),
                  " قائمه الطلبات "),
            ],),
            
            
          ],),
          
          )),
          ],),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.keyboard_arrow_left_sharp,color: Color(0xff6b6e75),),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Text("مركز الدعم و المساعدة",),
              ),
              ChangeAbleIcon(Icons.headphones_outlined,Color(0xff6b7483),15)
            ],),
            
          ),
          Divider(),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Icon(Icons.keyboard_arrow_left_sharp,color: Color(0xff6b6e75),),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Text("  urpay قيم ",),
              ),
              ChangeAbleIcon(Icons.thumb_up_alt_outlined,Color(0xff476bf1),15)
            ],),
            
          ),
          Divider(),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Icon(Icons.keyboard_arrow_left_sharp,color: Color(0xff6b6e75),),
              Padding(
                padding: const EdgeInsets.only(left: 190),
                child: Text("  سياسة الخصوصية",),
              ),
              ChangeAbleIcon(Icons.verified_user_outlined,Color(0xff11cc5d),15)
            ],),
            
          ),
          Divider(),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.keyboard_arrow_left_sharp,color: Color(0xff6b6e75),),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(" الشروط والاحكام",),
              ),
              ChangeAbleIcon(Icons.book_outlined,Color(0xfff96690),15)
            ],),
            
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
            Text("تسجيل الخروج",style: TextStyle(color: Color(0xff427093)),),
             Icon(Icons.output,color: Color(0xff427093),),
          ],),
          Spacer(),
          Text("الاصدار 4.0.25(النسخة 1407)",style: TextStyle(fontSize: 12,color: Color(0xff7e7f81)),)
          
      ],) 
      ,);
  }
}