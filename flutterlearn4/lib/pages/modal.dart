// modal.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showModal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      "Add a Todo",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  hintText: 'Type your Todo',
                  border: UnderlineInputBorder(),
                  labelStyle: new TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70),
                    onPressed: () {
                      // Add your onPressed logic here
                      Navigator.pop(context);
                    },
                    child: Text('Cancel', style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      // Add your onPressed logic here
                      Navigator.pop(context);
                    },
                    child: Container(
                        color: Colors.blue,
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
