import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var todos = ['Buy Milk', 'Buy shoes', 'Buy clothes', 'Buy car'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(end: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 200,
                            // width: 300,
                            margin: EdgeInsets.all(10),
                            color: Colors.amber,
                            child: Center(
                                child: Text(
                              '${todos[index]}',
                              textAlign: TextAlign.left,
                            )));
                      }),
                )
              ],
            ),
          )),
    );
  }
}
