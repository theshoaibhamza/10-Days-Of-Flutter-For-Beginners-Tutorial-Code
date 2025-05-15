// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_final_fields, avoid_print, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hahahihihohoahoasa extends StatelessWidget {
  Hahahihihohoahoasa(
      {super.key, required this.controllerX, required this.onAdd});

  VoidCallback onAdd;

  TextEditingController controllerX;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        width: 200,
        color: Colors.white,
        child: Column(
          children: [
            TextFormField(
              controller: controllerX,
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
                    onAdd();
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
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
  }
}
