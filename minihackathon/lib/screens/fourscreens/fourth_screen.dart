import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/login/login_page.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Scaffold(
        body: Stack(
          children: [
            const Image(image: AssetImage("assets/images/girlbackground.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            ),
            const Positioned(
              left: 110,
              child: Image(
                image: AssetImage("assets/images/girl2.png")) 
            ),
            Positioned(
              bottom: 120,
              left: 22,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  side: BorderSide(color: Colors.white)),
            ),
                onPressed: (){
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Login())));
                }, 
              icon: 
              const Icon(Icons.facebook, size: 32,),
               label: const Text(" Continue with facebook",
               style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
               ),)),
         ),const Positioned(
          bottom: 50,
          left: 6,
          child:
           Text("By clicking this button you agree to our\nterms of service and privacy policy",
           style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
           ),
           textAlign: TextAlign.center,) 
          )
         ],
    ),);
  }
}