// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_app/screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
