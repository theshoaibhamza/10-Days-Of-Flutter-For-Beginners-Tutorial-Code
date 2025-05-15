// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText(
      {super.key,
      required this.title,
      this.size = 20,
      this.color = Colors.black,
      required this.check});

  String title;
  double? size;
  Color? color;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.white,
          decoration: check ? TextDecoration.lineThrough : TextDecoration.none),
    );
  }
}
