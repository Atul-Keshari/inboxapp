import 'package:flutter/material.dart';

Widget buildPaddingStylishButton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildStylishButton(
            name: "Primary",
            size: Size(180, 50),
            backgroundcolor: Colors.indigoAccent,
            textcolor: Colors.white),
        SizedBox(
          width: 5,
        ),
        buildStylishButton(
            size: Size(180, 50),
            name: "Social",
            backgroundcolor: Colors.amber,
            textcolor: Colors.black),
      ],
    ),
  );
}

Widget buildStylishButton(
    {required String name,
    required Color backgroundcolor,
    required Color textcolor,
    required Size size}) {
  return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: backgroundcolor,
          primary: textcolor,
          minimumSize: size,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(name));
}
