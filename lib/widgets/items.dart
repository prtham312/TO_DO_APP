// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:to_do_app/Model/todo.dart';

class items extends StatelessWidget {
  final Todo todo;
  final onchange;
  final ondelete;
  const items({
    Key? key,
    required this.todo,
    required this.onchange,
    required this.ondelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onchange(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: Colors.blue),
        title: Text(
          todo.todone!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        contentPadding: EdgeInsets.all(15),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 20,
            onPressed: () {
              ondelete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
