import 'package:clone_app/Screens/home_screen.dart';
import 'package:clone_app/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  List<String> pin = [];

  Widget pinNumberField(int index) {
    return Container(
      
      height: 90,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal:5),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,), 
          onChanged: (value) {
            setState(() {
              pin[index] = value;
            });
            // Implement your logic to check the PIN or move to the next field
          },
          decoration: InputDecoration(
            counterText: '',icon: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: new Icon(Icons.circle,size: 12,color: Color(0xff81a9cb),),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body: Column(
        
        
        children:[
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 32),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
              children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(width: 35,height: 35,color: Color(0xfff5a701),child: Icon(Icons.blur_circular_sharp,color: Colors.white,),))
          ,Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Text("Engilsh"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Text("تسجيل الدخول"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Container(height: 35,width: 35,color: Color(0xffdff1ff),child: Icon(Icons.output_outlined),)),
          )
         
          
            ],
            ),

          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text("رمز المرور ",style: TextStyle(fontSize: 25),),
          ),
          Text("يرحى إدخال رمز المرور للدخول إلى حسابك",style: TextStyle(color: Color(0xff73747a)),),
          SizedBox(height: 30,),
        
          Row(children: [
            
          ],),
        
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => 
                Expanded(child: pinNumberField(index)),
              ),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> NavBar()),
       (route) => false);
            },
             
            child: ClipRRect(borderRadius: BorderRadius.circular(16),
              child: Container(height: 30,width: 60,color: Colors.blue,child: Center(child: Text("دخول")),))),
             Text("نسيت رمزالمرور؟",style: TextStyle(color: Color(0xff97979f)),),
             Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("إعادة تعيين رمز المرور ",style: TextStyle(color: Color(0xff1f537d)),),
              Icon(Icons.key,color: Color(0xff1f537d),)
             ],)
          
        ],
      ),
    );
  }
}