import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/constants/colors/colors.dart';
import 'package:minihackathon/screens/splash+pages/shopping_cart.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const  SizedBox(height: 10,),
              const Text("Material",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),const SizedBox(height: 20,),
              const Text("AS SEEN IN REDBOOK! You'll be primed and ready in\nthe Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress\nhas a casual shift shape, accented by a rounded neckline.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black),
              ),SizedBox(height: 10,),
               const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("WASH INSTRUCTION",
                     textAlign: TextAlign.left,
                     style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Before you turn to your bottle of bleach to make your whites shine like they used to, it’s worth taking a look at your garment’s fabric care label to see if the clothing can handle bleaching agents.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),),
                    ),
                     const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const Shopping()),
                            ),
                          );
                        },
                        child: Text(
                          "Add to Bag",
                          style:TextStyle(color: Colors.white,
                          fontSize: 35),
                          textAlign: TextAlign.justify,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(Colorss.splashcolor),
                          ),
                        ),
                      ),
                    ),
               ],
          ),
        ),
      ),
    );
  }
}