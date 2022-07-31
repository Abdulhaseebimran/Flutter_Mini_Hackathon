import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
       child: Text("ADD",
       style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
       ),),
      ),
    );
  }
}