// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable
import 'package:day1/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile2 extends StatelessWidget {
  ToDoTile2(
      {super.key,
      required this.ondelete,
      required this.value,
      required this.onChanged,
      required this.text});

  VoidCallback ondelete;

  bool value;

  String text;
  void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        //SlidableAction(onPressed: onPressed),
        Expanded(
          child: GestureDetector(
            onTap: () {
              ondelete();
              print("This functionality is working perfectly");
            },
            child: Container(
              margin: EdgeInsets.only(right: 17),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30)),
              height: 70,
              width: 100,
              child: Icon(Icons.delete),
            ),
          ),
        )
      ]),
      child: Padding(
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
      ),
    );
  }
}
