import 'package:flutter/material.dart';

// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Samik",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        )),
    // body: Container(
    //     color: Colors.red,
    //     padding: EdgeInsets.all(20),
    //     child: Text("body",
    //         style: TextStyle(
    //             color: Colors.blue,
    //             fontSize: 25,
    //             fontWeight: FontWeight.bold)))
  )));
}
  ///============== Using Cupertino ==
  // runApp(CupertinoApp(
  //     home: CupertinoPageScaffold(
  //         navigationBar: CupertinoNavigationBar(
  //           middle: Text("Samik"),
  //         ),
  //         child: Center(
  //           child: Text("this is a text"),
  //         ))));
//}
