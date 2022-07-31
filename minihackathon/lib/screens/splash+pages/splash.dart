import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/login/login_page.dart';
import 'package:minihackathon/screens/fourscreens/first_screens.dart';
import 'package:minihackathon/screens/fourscreens/swipe_screens.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
  super.initState();
  Timer(const Duration(seconds: 5), () => Navigator.pushReplacement( context,
        MaterialPageRoute(
          builder: (context) => const PageViewDemo()),
  )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFE2550),
      body:  Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/images/Vector.png")),
            ],
          ),
        ),
      ),
    );
  }
}