import 'package:flutter/material.dart';
// import 'package:flutterlearn4/pages/about.dart';
import 'package:flutterlearn4/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    ),
  );
}
