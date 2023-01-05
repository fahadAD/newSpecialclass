import 'package:flutter/material.dart';
import 'package:untitled3/Home/main1.dart';
import 'package:untitled3/Home/main3.dart';
import 'package:untitled3/Home/main4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Logout(),
    );
  }
}
