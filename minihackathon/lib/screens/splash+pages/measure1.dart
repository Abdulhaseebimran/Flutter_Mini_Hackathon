import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihackathon/constants/colors/colors.dart';
import 'package:minihackathon/constants/textconstants.dart';
import 'package:minihackathon/screens/splash+pages/shopping_cart.dart';
import 'package:minihackathon/screens/splash+pages/specific_material.dart';

import '../../constants/functions/selectedCircle.dart';

class Measure extends StatefulWidget {
  const Measure({Key? key}) : super(key: key);

  @override
  State<Measure> createState() => _MeasureState();
}

class _MeasureState extends State<Measure> {
  String dropdownvalue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(TextConstants.waist),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: TextFormField(
                          textAlign: TextAlign.center,
                         initialValue: TextConstants.initalvalue1,
                          keyboardType: TextInputType.number,
                           inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(TextConstants.length),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: TextFormField(
                       textAlign: TextAlign.center,
                         initialValue: TextConstants.initalvalue2,
                          keyboardType: TextInputType.number,
                           inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  )
                ],
              ),
               Column(
                    children: [
                      Text(TextConstants.breadth),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          initialValue: TextConstants.initalvalue3,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(TextConstants.Colorr),
                  selectedcircle(Color(Colorss.circle1)),
                  selectedcircle(Color(Colorss.circle2)),
                  selectedcircle(Color(Colorss.circle3)),
                  DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ), Text(TextConstants.message5),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Shopping()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.pink)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SpecifyMeasurements()),
                          );
                        },
                        child: Text(
                          TextConstants.yes,
                          style:
                          const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const Measure())));
                      },
                      child: Text(
                        TextConstants.nope,
                        style: const TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(TextConstants.total,style: GoogleFonts.raleway(
                        color: Colors.black, fontSize: 16,
                      )),
                      Text(TextConstants.price, style: GoogleFonts.raleway(
                        color: Colors.pink, fontSize: 16,
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: 
                      Text(TextConstants.addtobag),
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.grey),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.pink)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
   