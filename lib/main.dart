import 'package:coffee/page1.dart';
import 'package:coffee/page2.dart';
import 'package:coffee/page3.dart';
import 'package:coffee/page4.dart';
import 'package:coffee/page5.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Page1() ,
    );
  }
}

