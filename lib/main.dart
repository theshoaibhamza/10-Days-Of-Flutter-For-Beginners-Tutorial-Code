// ignore_for_file: prefer_const_constructors, unused_import

import 'package:day1/Dart7.dart';
import 'package:day1/Day1.dart';
import 'package:day1/Day10.dart';
import 'package:day1/Day2.dart';
import 'package:day1/Day3.dart';
import 'package:day1/Day4.dart';
import 'package:day1/Day5.dart';
import 'package:day1/Day6.dart';
import 'package:day1/Day8.dart';
import 'package:day1/Day9.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Day10(),
      debugShowCheckedModeBanner: false,
    );
  }
}
