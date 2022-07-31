import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Slides_pics extends StatelessWidget {
  const Slides_pics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
      children: [
        Container(color: Colors.white,
          child: ListView(
            shrinkWrap: true,
           children: [
            CarouselSlider(
            items: [
             Container( 
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/measurement1.png",
                  ),fit: BoxFit.contain
                  )
              ),
             ), Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/measurement1.png",
                  ),fit: BoxFit.contain
                  )
              ),
             ),Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/measurement1.png",
                  ),fit: BoxFit.contain
                  )
              ),
             ),
             ],  
             options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.5,
            autoPlay: true,
            initialPage: 3,
            autoPlayAnimationDuration: const Duration(milliseconds: 400), 
            ),
          ),
          ],
          ),
        ), 
        const Text("Perfect Situation Purple Long Sleeve Dress",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          backgroundColor: Colors.white
        ),),
        const Text("\$25.99",
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
        ),
        ),
      ],
      ),
    );
  }
}