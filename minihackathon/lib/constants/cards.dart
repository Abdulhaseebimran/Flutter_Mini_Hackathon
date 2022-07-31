import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

ccardss(context, images1, price, text, images2, text2){
  return Card(
     child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.47,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
                child: Image(
              image: AssetImage(images1),
              )),const SizedBox(height: 10,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),),
                const SizedBox(height: 10,),
                  Column(
                    children: [
                      LikeButton()
                    ],
                  ),const SizedBox(height: 10,),
                      Padding(
                   padding: const EdgeInsets.only(bottom: 4.0),
                   child: Text(text),
                  ),const SizedBox(height: 10,),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(images2)),
                // const SizedBox(height: 5,),
                Text(
                  text2,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
              )]
              )],
            )),
     ),
  );
}