import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minihackathon/firebase_options.dart';
import 'package:minihackathon/login/login_page.dart';
import 'package:minihackathon/login/signup.dart';
import 'package:minihackathon/screens/fourscreens/first_screens.dart';
import 'package:minihackathon/screens/fourscreens/fourth_screen.dart';
import 'package:minihackathon/screens/fourscreens/second_screens.dart';
import 'package:minihackathon/screens/fourscreens/third_screen.dart';
import 'package:minihackathon/screens/home_page.dart';
import 'package:minihackathon/screens/splash+pages/bottom_navigation.dart';
import 'package:minihackathon/screens/splash+pages/measure1.dart';
import 'package:minihackathon/screens/splash+pages/measurement1.dart';
import 'package:minihackathon/screens/splash+pages/paymentdone.dart';
import 'package:minihackathon/screens/splash+pages/shopping_cart.dart';
import 'package:minihackathon/screens/splash+pages/specific_material.dart';
import 'package:minihackathon/screens/splash+pages/splash.dart';
import 'package:minihackathon/screens/splash+pages/top_page.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        backgroundColor: Colors.white,
      ),
      home: const Splash(),
     );
  }
}