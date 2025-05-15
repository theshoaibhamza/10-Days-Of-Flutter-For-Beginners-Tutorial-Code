// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable
import 'package:day1/MyText.dart';
import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.text});

  bool value;

  String text;
  void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(30)),
        height: 70,
        width: 415,
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.black,
              value: value,
              onChanged: onChanged,
              shape: StadiumBorder(side: BorderSide()),
            ),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: MyText(
                  title: text,
                  check: value,
                ))
          ],
        ),
      ),
    );
  }
}
