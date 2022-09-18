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
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';


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
        builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
      background: Container(color: const Color(0xFFF5F5F5))),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        backgroundColor: Colors.white,
      ),
      home: const Splash(),
    );
  }
}