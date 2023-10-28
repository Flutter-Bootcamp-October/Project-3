
import 'package:clone_app/Screens/cards_screen.dart';
import 'package:clone_app/Screens/home_screen.dart';
import 'package:clone_app/Screens/more_screen.dart';
import 'package:clone_app/Screens/shop_screen.dart';
import 'package:clone_app/Screens/trans_screen.dart';
import 'package:clone_app/Screens/wedgets/nav_wedget.dart';
import 'package:clone_app/global/global_color.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final PageStorageBucket bucket =PageStorageBucket();
  int indexSelected=4;
    List<Widget> screen=[
   
   
    const MoreScreen(),
    const ShopScreen(),
    const TransationsScreen(),
     const CardsScreen(),
     const HomeScreenn(),
  ];
Color getBackgroundColor() {
    if (indexSelected == 4) {
      return Color(0xff0263b2);  // if index is 4, return red color
    } else {
      return GlobalColor;  // else, return the original global color
    }
  }
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      
      backgroundColor :getBackgroundColor(),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(16),
          child: BottomAppBar(
            height: 55,
           
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
           
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                ButtonNavWidget(
                  isSelected: indexSelected == 0 ? true : false,
                  icon: Icons.zoom_in_map_rounded,
                  onPressed: () {
                indexSelected = 0;
                setState(() {
                  
                });
                   
                  }, label: 'المزيد',
                ),
                Expanded(
                  child: ButtonNavWidget(
                    isSelected: indexSelected == 1 ? true : false,
                    icon: Icons.shopping_bag_outlined,
                    onPressed: () {
                  indexSelected = 1;
                  setState(() {});
                    }, label: 'المتجر',
                  ),
                ),
               
                Expanded(
                  child: ButtonNavWidget(
                    isSelected: indexSelected == 2 ? true : false,
                    icon: Icons.compare_arrows_outlined,
                    onPressed: () {
                  indexSelected = 2;
                  setState(() {});
                    }, label: 'التحويل',
                  ),
                ),
                Expanded(
                  child: ButtonNavWidget(
                    isSelected: indexSelected == 3 ? true : false,
                    icon: Icons.add_card_outlined,
                    onPressed: () {
                  indexSelected = 3;
                  setState(() {});
                    }, label: 'البطاقات',
                  ),
                ),
                
                 Expanded(
                   child: ButtonNavWidget(
                    isSelected: indexSelected == 4 ? true : false,
                    icon: Icons.home,
                    onPressed: () {
                   indexSelected = 4;
                   setState(() {});
                    }, label: 'الرئيسية',
                             ),
                 ),
              ],
            ),
          ),
        ),
      ),
   
      body: PageStorage(
        bucket: bucket,
        child: screen[indexSelected],
      ),
    );
  }
}

