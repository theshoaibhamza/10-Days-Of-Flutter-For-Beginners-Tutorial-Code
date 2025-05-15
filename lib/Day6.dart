// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable, unused_import
import 'package:day1/MyText.dart';
import 'package:day1/ToDoTile.dart';
import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  TextEditingController _controller = TextEditingController();

  void onChanged(int index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  HahaHihiHoohoHaaa() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Column(
                children: [
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: "Enter Note",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Notes.add([_controller.text.toString(), false]);
                            _controller.clear();
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Add",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Cancel",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              HahaHihiHoohoHaaa();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Day6",
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
