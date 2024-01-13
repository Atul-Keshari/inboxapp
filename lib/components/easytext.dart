import 'package:flutter/material.dart';

Widget buildText(
    {required String name,
    required double size,
    required FontWeight fontWeight,
    required Color color}) {
  return Text(
    name,
    style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
  );
}
