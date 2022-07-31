import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/constants/colors/colors.dart';
import 'package:minihackathon/screens/home_page.dart';
import 'package:minihackathon/screens/splash+pages/bottom_navigation.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Container(
        child: Column(
          children: [
           const  SizedBox(
              height: 180,
              width: 100,
              child: CircleAvatar(
                child: Icon(Icons.check,size: 60,color: Colors.white,),
                backgroundColor: Colors.green,
                radius: 30,
              )
        ),
        const Padding(padding: EdgeInsets.all(9.0),
        child: Text(
          "Payment Sucessful",
        style: TextStyle(fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.black),),
        ),
        const Padding(
          padding: EdgeInsets.all(9.0),
        child: Text(
          "Your order will be ready in 5 days, including shipping, more details and options for tracking will be sent to your email ",
        style: TextStyle(
          fontSize: 23, 
          ),
          textAlign: TextAlign.center,
        ),),
        const Padding(padding: EdgeInsets.all(12.0),
        child: Text(
          "Thanks!!!",
        style: TextStyle(fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black
        ),),),
        const Padding(padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          width: 50,
        ),
        ),
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color(Colorss.splashcolor))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MyNavigationBar())));
                    },
                    child: const Text(
                      "Continue Shopping",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            )
        ], 
        ),
      ),
     ), 
    );
  }
}