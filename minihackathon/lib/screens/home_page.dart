import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/constants/functions/listtile.dart';
import 'package:minihackathon/screens/splash+pages/bottom_navigation.dart';
import 'package:minihackathon/screens/splash+pages/children.dart';
import 'package:minihackathon/screens/splash+pages/mens.dart';
import 'package:minihackathon/screens/splash+pages/women.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(  
        bottom: const TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: "WOMEN",),
          Tab(text: "MENS",),
          Tab(text: "CHILDREN",),
        ],
      ),
          backgroundColor: Colors.white,
          title: Container(
            height: 65,
          width: MediaQuery.of(context).size.width,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                suffixIcon: Icon(Icons.close),
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                disabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ), 
            ),
          ),
          actions: [
             Image.asset("assets/images/avatar.png")
          ], 
          ),
           body: const TabBarView(
          children: [
            Women(),
            Mens_ppage(),
            Children_page(),
          ],
        ),
       ),
    );
  }
}