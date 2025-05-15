// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable, unused_import
import 'package:day1/MyText.dart';
import 'package:day1/ToDoTile.dart';
import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  bool istracker = false;

  void onChanged() {
    setState(() {
      if (istracker == false) {
        istracker = true;
      } else {
        istracker = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "Day4",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: [
            ToDoTile(
              text: "Let's do flutter",
              value: istracker,
              onChanged: (x) {
                onChanged();
              },
            ),
            ToDoTile(
              text: "Take Rest",
              value: istracker,
              onChanged: (x) {
                onChanged();
              },
            )
          ],
        ),
      ),
    );
  }
}
