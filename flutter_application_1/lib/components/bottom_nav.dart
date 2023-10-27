import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  //void Function(int)? onTabChange;
  BottomNav({super.key, /*required this.onTabChange*/});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15,bottom: 30, left: 20, right: 20),
      child: const GNav(
        color: Color.fromARGB(255, 146, 106, 106),
        //activeColor: Color.fromARGB(255, 49, 48, 48),
        //tabActiveBorder: Border.all(color: Color.fromARGB(255, 128, 75, 75),),
        tabBackgroundColor: Color.fromARGB(255, 243, 241, 241),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 10,
        //onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
        ],
      ),
    );
  }
}