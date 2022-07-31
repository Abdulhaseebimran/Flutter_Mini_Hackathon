import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:minihackathon/screens/splash+pages/measurement1.dart';
import 'package:minihackathon/screens/splash+pages/slides_pics.dart';

import '../home_page.dart';

class Women extends StatefulWidget {
  const Women({Key? key}) : super(key: key);

  @override
  State<Women> createState() => _WomenState();
}

class _WomenState extends State<Women> {
  @override
  Widget build(BuildContext context) {
    return Card(
     child: GestureDetector(
      onTap: () {
        Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Measurement()),
                ), 
              ); 
      }, child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/Oval 7.png")),
              ),
              Column(
                children: [
                  Text("Sandy Williams",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                 const Text("Freelance Tailor",
                  style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),)
                ],
              )
            ],
          ), Padding(padding:const EdgeInsets.all(8.0),
          child: Row(
            children: const[
              LikeButton(
                size: 16,
              ),
              Text("2.3k")
            ],
          ),
          ),
          const Padding(padding: EdgeInsets.all(8.0),
          child: Text("If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.",
          style: TextStyle(fontSize: 16),),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 200,
                  child: Image(image: AssetImage("assets/images/home1.png")),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage("assets/images/home2.png")),
                    ),
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage("assets/images/home3.png")),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage("assets/images/home2.png")),
                    ),
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage("assets/images/home3.png")),
                    ),
                  ],
                ),
              ],
            ),
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: (){}, 
                    child: Text("#Summer",
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),)),
                    const SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){}, 
                    child: Text("#Purple",
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),))
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                   const  Text("2.3k",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink),),
                  ],
                ),
                )
        ],
      ),
    ])));
  }
}
