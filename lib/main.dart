import 'package:baitap_buoi18/bai1.dart';
import 'package:baitap_buoi18/bai2.dart';
import 'package:baitap_buoi18/bai3.dart';
import 'package:baitap_buoi18/bai4.dart';
import 'package:baitap_buoi18/bai5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // setState()
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: Bai5())),
    );
  }
}
