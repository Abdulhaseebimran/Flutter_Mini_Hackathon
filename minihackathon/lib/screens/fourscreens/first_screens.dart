import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihackathon/login/login_page.dart';

class first_Screens extends StatelessWidget {
  const first_Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
         child: Scaffold(
          body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/first_screen.png",),
            fit: BoxFit.cover)
          ),
          child:  Column(
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
                      Text("1",
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
                            Text(" Jennifer Kingsley", 
                           style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                           ],
                         ),
                         Row(children: const [
                           Text(" exploring the new range of winter fashion wear",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),),
                            SizedBox(height: 20,),
                           
                         ],)
                      ],
                  ),const SizedBox(height: 80,),
                   Center( 
                              child: OutlinedButton
                              (style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.white),
                                ),padding: MaterialStateProperty.all(
                                 const  EdgeInsets.symmetric(
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
  
  // AnimatedContainer buildDot({int? index}) {
  //   return AnimatedContainer(
  //     duration: kAnimationDuration,
  //     margin: const EdgeInsets.only(right: 5),
  //     height: 6,
  //     width: currentPage == index ? 20 : 6,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(3),
  //       color: currentPage == index ? kPrimaryColor : const Color(0XFFD8D8D8),
  //     ),
  //   );
  // }
