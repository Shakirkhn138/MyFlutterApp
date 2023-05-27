import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:st/Models/profile.dart';
import 'package:st/dash_board.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

 int myIndex = 0;

 List widghetList =[
   // Text('Home'),
   DashBoard(),
   // Text('Profile')
   Profile(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              myIndex = index;
            });

          },
          currentIndex: myIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
        label: 'Profile')
      ]),
      body: Center(
        child: widghetList[myIndex]
      ),
    );
  }
}
