import 'package:clone_app/Screens/wedgets/change_able_icon.dart';
import 'package:clone_app/Screens/wedgets/square_ads.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      
      body:Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 33,left: 20),
          child: Row(children: [
            FullCostomIcon(Icons.shopping_bag_outlined,Color(0xff154970),Color(0xffdff1ff),),
            SizedBox(width: 4,),
            FullCostomIcon(Icons.blinds_closed_outlined,Color(0xff154970),Color(0xffdff1ff)),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("المنتجات الرقمية"),
            )
            
          ],),
        ),
        SizedBox(height: 30,),
        
       ClipRRect(
  borderRadius: BorderRadius.circular(12),
  child: Material(  
    elevation: 70,  
    shadowColor: Colors.black,  
    borderRadius: BorderRadius.circular(12), 
    child: Container(
      width: 350,  
      height: 50,  
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),  
          hintText: 'ابحث',  
          contentPadding: EdgeInsets.symmetric(horizontal: 270, vertical: 13),  
        ),
      ),
    ),
  ),
),
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(width: 55,height: 27,color: Color(0xffdef0ff),
            child: Center(child: Text("اظهر الكل",style: TextStyle(fontSize: 11),),),
            ),
          ),
          Text("التصنيفات ",style: TextStyle(fontSize: 20),)
      
        ],),
      ),
      Row(children: [
      SizedBox(
        height: 130,width: 390,
        child: ListView(
          scrollDirection: Axis.horizontal,
          
          children: [
            BuyIcons(Icons.gamepad_outlined,"العاب الكترونية"),
               BuyIcons(Icons.blur_circular_rounded,"الاتصالات و الانترنت "),
                  BuyIcons(Icons.apple_outlined," ايتونز"),
                     BuyIcons(Icons.shopping_bag_outlined," متاجر الكترونيه"),
                        BuyIcons(Icons.airplanemode_active_outlined,"السفر واليسياحه "),
                           BuyIcons(Icons.gamepad_outlined,"العاب الكترونية"),
                              BuyIcons(Icons.blur_circular_rounded,"لاتصالات و الانترنت  "),
        
          
        ],),
      )
      ],),

      Padding(
        padding: const EdgeInsets.only(left: 230),
        child: Text("احدث العروض",style: TextStyle(fontSize: 25),),
      ),
      SizedBox(height: 10,),
      SizedBox(width: 400,height: 240,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SquareAds("lib\\imges\\zain.jpg",300,2),
              SquareAds("lib\\imges\\mobliy.jpg",350,180),
          ],),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ClipRRect(borderRadius: BorderRadius.circular(16),
          child: Container(color: Color(0xff7da8cd),width: 14,height: 5,)),
        SizedBox(width: 5,),
         ClipRRect(borderRadius: BorderRadius.circular(16),
          child: Container(color: Color(0xff005398),width: 35,height: 5,))
      ],)
      ],
      ) 
      ,);
  }

}