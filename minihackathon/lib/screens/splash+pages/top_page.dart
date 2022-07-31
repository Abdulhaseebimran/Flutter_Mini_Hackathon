import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/constants/cards.dart';
import 'package:minihackathon/constants/imagess.dart';
import 'package:minihackathon/constants/textconstants.dart';

class TopPages extends StatefulWidget {
  const TopPages({Key? key}) : super(key: key);

  @override
  State<TopPages> createState() => _TopPagesState();
}

class _TopPagesState extends State<TopPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TextField(
              decoration: InputDecoration(
                hintText: "top",
                suffixIcon: Icon(Icons.close),
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                disabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ), 
            ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ccardss(context,
                   ImagesConst.product1,
                    TextConstants.price,
                     TextConstants.whitestrapplungetop,
                      ImagesConst.oval8,
                       TextConstants.sandywilliams
                       ),
                       ccardss(context,
                        ImagesConst.product2, 
                        TextConstants.price,
                         TextConstants.greywintercardigan,
                        ImagesConst.oval7,
                        TextConstants.aleroSamuels)
                ],
              ), Row(
                children: [
                  ccardss(context,
                   ImagesConst.product3,
                    TextConstants.price,
                     TextConstants.whitestrapplungetop,
                      ImagesConst.oval8,
                       TextConstants.sandywilliams
                       ),
                       ccardss(context,
                        ImagesConst.product4, 
                        TextConstants.price,
                         TextConstants.greywintercardigan,
                        ImagesConst.oval7,
                        TextConstants.aleroSamuels)
                ],
              ),Row(
                children: [
                  ccardss(context,
                   ImagesConst.product1,
                    TextConstants.price,
                     TextConstants.whitestrapplungetop,
                      ImagesConst.oval8,
                       TextConstants.sandywilliams
                       ),
                       ccardss(context,
                        ImagesConst.product2, 
                        TextConstants.price,
                         TextConstants.greywintercardigan,
                        ImagesConst.oval7,
                        TextConstants.aleroSamuels)
                ],
              ),Row(
                children: [
                  ccardss(context,
                   ImagesConst.product3,
                    TextConstants.price,
                     TextConstants.whitestrapplungetop,
                      ImagesConst.oval8,
                       TextConstants.sandywilliams
                       ),
                       ccardss(context,
                        ImagesConst.product4, 
                        TextConstants.price,
                         TextConstants.greywintercardigan,
                        ImagesConst.oval7,
                        TextConstants.aleroSamuels)
                ],
              ),
            ],
          ),)
        ),
    );
  }
}