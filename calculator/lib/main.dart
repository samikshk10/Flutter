import 'package:calculator/screens/home_screen.dart';
import 'package:calculator/screens/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/screen': (context) => const Screen(),
      },
    ),
  );
}
