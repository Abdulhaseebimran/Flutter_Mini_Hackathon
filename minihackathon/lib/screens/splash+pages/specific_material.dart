import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minihackathon/constants/colors/colors.dart';
import 'package:minihackathon/screens/splash+pages/shopping_cart.dart';

import '../../constants/functions/selectedCircle.dart';

class SpecifyMeasurements extends StatefulWidget {
  const SpecifyMeasurements({Key? key}) : super(key: key);

  @override
  State<SpecifyMeasurements> createState() => _SpecifyMeasurementsState();
}

class _SpecifyMeasurementsState extends State<SpecifyMeasurements> {
  final List _materials = [
    "Lace",
    "Ankara",
    "Guinea",
    "Linen",
    "Silk",
    "Wool",
    "Cotton"
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Specify Material",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 35, 5),
                        child: Text(
                          "Material",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.47,
                    child: ListView.builder(
                        itemCount: _materials.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: ListTile(
                                title: Text(
                                  "${_materials[index]}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                textColor: selectedIndex == index
                                    ? Colors.pink
                                    : null,
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                }),
                          );
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "ENTER THE COLOR",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        selectedcircle(Color(Colorss.circle1)),
                        selectedcircle(Color(Colorss.circle2)),
                        selectedcircle(Color(Colorss.circle3)),
                        selectedcircle(Colors.blue),
                        selectedcircle(Colors.orange),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "HOW MANY YARDS?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                      ),
                      initialValue: "5",
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
              Container(height: 70, width: 500, color: Colors.blue,
                      child:  OutlinedButton(
                                 style: OutlinedButton.styleFrom(
                                 backgroundColor: Colors.pink,
                                primary: Colors.grey, //<-- SEE HERE
                                 ),  onPressed: () {
                                   Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const Shopping()));
                                 },
                                    child: const Text(
                                    "DONE",
                                 style: TextStyle(fontSize: 40,
                                  color: Colors.white,
                                 fontWeight: FontWeight.bold),
                      ),
                ), ), 
          ]
            ),
      
        ),
      );
  }
}