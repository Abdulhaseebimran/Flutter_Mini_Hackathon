import 'package:flutter/material.dart';
import 'package:minihackathon/screens/splash+pages/setting.dart';
import 'package:minihackathon/screens/splash+pages/shopping_cart.dart';

import '../home_page.dart';
import 'add.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Shopping(),
    setting(),
    Add(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
         BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home,
          color: Colors.pink,),
          ),
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.shopping_bag,
          color: Colors.pink,),
          ), 
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.settings,
          color: Colors.pink,),
          ),
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.add,
          color: Colors.pink,),
          )
        ], 
        type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}