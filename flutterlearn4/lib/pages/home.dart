import 'package:flutter/material.dart';
import 'modal.dart';

var todos = ['Go to Shopping', 'Buy books', 'Send Email', 'Exercise'];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> todoChecklist = List.filled(todos.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Todo Manager',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          activeColor: Colors.red,
                          value: todoChecklist[index],
                          onChanged: (bool? value) {
                            setState(() {
                              todoChecklist[index] = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              '${todos[index]}',
                              textAlign: TextAlign.left,
                              style: todoChecklist[index]
                                  ? TextStyle(
                                      decoration: TextDecoration.lineThrough)
                                  : TextStyle(),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {},
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {
          showModal(context);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
