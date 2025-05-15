// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable, unused_import
import 'package:day1/MyText.dart';
import 'package:day1/ToDoTile.dart';
import 'package:flutter/material.dart';

class Day5 extends StatefulWidget {
  const Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  void onChanged(int index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  List Notes = [
    ["Hello Shoaib Hamza", false],
    ["Bye Shoaib Hamza", true],
    ["Today's Video Done", true],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Day5",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Notes.length,
              itemBuilder: (context, index) {
                return ToDoTile(
                    value: Notes[index][1],
                    onChanged: (p0) {
                      onChanged(index);
                    },
                    text: Notes[index][0]);
              })),
    );
  }
}
