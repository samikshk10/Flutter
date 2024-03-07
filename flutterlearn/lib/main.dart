import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Samik Shakya",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.all(16),
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ]),
              Row(children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ]),
              Row(
                children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ]),
            ],
          )
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //         height: 80,
          //         width: 80,
          //         decoration: BoxDecoration(color: Colors.red),
          //         child: Center(
          //             child: Text("one", style: TextStyle(color: Colors.white)))),
          //     Container(
          //         height: 80,
          //         width: 80,
          //         decoration: BoxDecoration(color: Colors.red),
          //         child: Center(
          //             child: Text("two", style: TextStyle(color: Colors.white)))),
          //     Container(
          //         height: 80,
          //         width: 80,
          //         decoration: BoxDecoration(color: Colors.red),
          //         child: Center(
          //             child:
          //                 Text("three", style: TextStyle(color: Colors.white)))),
          //   ],
          // ),
          ),
    )),
  );
}
