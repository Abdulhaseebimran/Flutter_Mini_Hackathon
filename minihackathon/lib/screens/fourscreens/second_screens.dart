import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihackathon/login/login_page.dart';

class Seconds extends StatelessWidget {
  const Seconds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
         child: Scaffold(
          body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/secscreen.png",),
            fit: BoxFit.cover)
          ),child:  Column(
            children: [
              Container(
                child: const Image(image: AssetImage("assets/images/firstvector.png")),
              ),const SizedBox(height: 40,),
              Column(
                children: [
                  const SizedBox(height: 200,),
                  Row(
                    children: [
                      Text(" No",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800, color: Colors.white),),
                      Text("2",
                      style: GoogleFonts.raleway(
                        fontSize: 61.84,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),) 
                      
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Featured",
                          style: GoogleFonts.raleway(
                            fontSize: 31.84,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink
                          ),),
                          Text("Tailored",
                          style: GoogleFonts.raleway(
                            fontSize: 61.84,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                          ,), Row(
                          children: [
                            Text(" Jimmy Chuka", 
                           style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                           ],
                         ),
                         Row(children: [
                           Text(" exploring new spring sweater collection",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),),
                            SizedBox(height: 20,),
                           
                         ],)
                      ],
                  ),
                   const SizedBox(height: 80,),
                         Center( 
                              child: OutlinedButton
                              (style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.white),
                                ),padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 20,
                                  )
                                )
                              ),
                                onPressed: (){
                                   Navigator.push(
                                   context,
                                  MaterialPageRoute(
                                  builder: ((context) => Login())));
                                }, child: const Text("Shop Now",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),)),
                            )
                ],
              )
            ]
         ), 
        ),
     ) );
  }
}