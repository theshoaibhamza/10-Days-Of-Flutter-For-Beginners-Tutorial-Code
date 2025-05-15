// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable, unused_import
import 'package:day1/MyText.dart';
import 'package:day1/ToDoTile.dart';
import 'package:day1/abc.dart';
import 'package:day1/hahahihiHohoahoasa.dart';
import 'package:flutter/material.dart';

class Day8 extends StatefulWidget {
  const Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  TextEditingController _controller = TextEditingController();

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

  onAdd() {
    setState(() {
      Notes.add([_controller.text.toString(), false]);
      Navigator.pop(context);
    });
  }

  onDelete(int index) {
    setState(() {
      Notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Hahahihihohoahoasa(
                      controllerX: _controller,
                      onAdd: () {
                        onAdd();
                      },
                    );
                  });
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Day8",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Notes.length,
              itemBuilder: (context, index) {
                return ToDoTile2(
                    ondelete: () {
                      onDelete(index);
                    },
                    value: Notes[index][1],
                    onChanged: (p0) {
                      onChanged(index);
                    },
                    text: Notes[index][0]);
              })),
    );
  }
}
