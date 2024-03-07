import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // provide safe zone and provide structure to the app
      appBar: AppBar(
        title: Text(
          "Samik Shakya",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("About Me",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Hey, I am Samik Shakya and I study at KIST college"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed!");
        },
        backgroundColor: Colors.blue,
        child: IconButton(
          icon: Icon(Icons.add, color: Colors.white),
          onPressed: () {
            print("Icon pressed!");
          },
        ),
      ),
    ),
  ));
}
