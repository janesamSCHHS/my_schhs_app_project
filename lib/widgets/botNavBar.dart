import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
         setState((){
          currentIndex = index;
         });
        },
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
            inactiveColor: Colors.blueGrey,),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text('About'),
            activeColor: Colors.lightBlueAccent,
            inactiveColor: Colors.blueGrey,),
          BottomNavyBarItem(
            icon: Icon(Icons.contact_phone),
            title: Text('Contacts'),
            activeColor: Colors.teal,
            inactiveColor: Colors.blueGrey,),
          BottomNavyBarItem(
            icon: Icon(Icons.local_hospital_outlined),
            title: Text('Facilities'),
            activeColor: Colors.teal,
            inactiveColor: Colors.blueGrey,),
          BottomNavyBarItem(
            icon: Icon(Icons.people_alt),
            title: Text('Community'),
            activeColor: Colors.teal,
            inactiveColor: Colors.blueGrey,),

        ],
      )
    );
  }

}

