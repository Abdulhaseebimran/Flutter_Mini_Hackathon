import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/screens/splash+pages/info.dart';
import 'package:minihackathon/screens/splash+pages/measure1.dart';
import 'package:minihackathon/screens/splash+pages/slides_pics.dart';

class Measurement extends StatelessWidget {
  const Measurement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0), 
             child: Column(
            children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
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
              autoPlayAnimationDuration: const Duration(milliseconds: 600), 
              ),
            ),
            ],
            ),
          ),const SizedBox(height: 10,), 
          const Text("Perfect Situation Purple Long Sleeve Dress",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
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
          const SizedBox(height: 10,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
             child: const TabBar(
            labelStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.pink,
            tabs: [
           Tab(text: "INFO"),
           Tab(text: "MEASUREMENT",)
          ]   
          ),
          ),SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 6, 43),
                borderRadius: BorderRadius.circular(8)
              ),
              child: const TabBarView(
                children: [
                  Info(),
                  Measure()
                ] ),
          
            ),
          )
              ], 
          ),),
        ),
      ), 
    );
  }
}
