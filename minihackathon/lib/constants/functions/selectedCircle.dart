import 'package:flutter/material.dart';

selectedcircle(Color clr) {
  return Container(
    margin: const EdgeInsets.all(6),
    width: 30,
    height: 30,
    decoration: BoxDecoration(color: clr, shape: BoxShape.circle),
  );
}