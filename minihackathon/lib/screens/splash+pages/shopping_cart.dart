import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/constants/colors/colors.dart';
import 'package:minihackathon/constants/functions/listtile.dart';
import 'package:minihackathon/constants/images.dart';
import 'package:minihackathon/screens/splash+pages/paymentdone.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView
        ( scrollDirection: Axis.vertical,
          child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const  Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Cart",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),),
                Padding(padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search, size: 30,),),
                      SizedBox(
                        child: Image(image: AssetImage("assets/images/avatar.png")),
                      ),
                    ],
                  ),
                ),
                ),
            ],), 
            const Padding(padding: EdgeInsets.all(13.0)),
           const  ListTile(leading: Image(image: AssetImage("assets/images/shirts1.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
              
             const  Padding(padding: EdgeInsets.all(13.0)),
           const  ListTile(leading: Image(image: AssetImage("assets/images/shirts2.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),
                ),
                const Padding(padding: EdgeInsets.all(13.0)),
            const ListTile(leading: Image(image: AssetImage("assets/images/shirts3.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              const   Padding(padding: EdgeInsets.all(13.0)),
            const ListTile(leading: Image(image: AssetImage("assets/images/shirts4.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),),const   Padding(padding: EdgeInsets.all(13.0)),
            const ListTile(leading: Image(image: AssetImage("assets/images/shirts2.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),),const   Padding(padding: EdgeInsets.all(13.0)),
            const ListTile(leading: Image(image: AssetImage("assets/images/shirts1.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),),
                const Padding(padding: EdgeInsets.all(13.0)),
               const ListTile(leading: Image(image: AssetImage("assets/images/shirts1.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Total: ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),), 
                     const  Text("\$25.99",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink
                    ),
                  ), const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Payment()),
                          ),
                        );
                      },
                      child: Text(
                            "Pay Now",
                        style: TextStyle(color: Color.fromARGB(255, 1, 1, 1),
                        fontSize: 25),
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
                )
           
          ],
        ), 
        )),
    );
  }
}