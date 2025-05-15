// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  int variable = 0;

  void Increment() {
    setState(() {
      variable++;
    });
  }

  void Decrement() {
    setState(() {
      variable--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "My First App",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "You have pressed this button",
              style: TextStyle(fontSize: 25),
            )),
            Text(
              variable.toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Increment();
                },
                child: Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  Decrement();
                },
                child: Text("Decrement")),
          ],
        ),
      ),
    );
  }
}
