import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihackathon/login/login_page.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("SETTING",
        style: GoogleFonts.raleway(
          fontSize: 40, fontWeight: FontWeight.bold,
        )
        ), 
      ),),
      body: Center(
        child: ElevatedButton(onPressed: (){
           Navigator.push(
            context,
         MaterialPageRoute(builder: (context) => const Login()));
        }, child: Text("LogOut", style: GoogleFonts.raleway(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white
        ),)),
      ),
    );
  }
}