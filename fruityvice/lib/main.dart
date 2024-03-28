import 'package:flutter/material.dart';
import 'package:fruityvice/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('FruityVice', style: TextStyle(color: Colors.white)),
      ),
      body: Home(),
    ),
  ));
}
