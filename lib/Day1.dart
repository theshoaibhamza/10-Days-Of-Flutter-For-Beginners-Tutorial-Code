// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.red,
              child: Center(
                  child: Text(
                "Hello World !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.green,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 80,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 50),
                  height: 150,
                  width: 150,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
