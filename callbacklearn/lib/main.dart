import 'package:callbacklearn/screens/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
    ),
  );
}
