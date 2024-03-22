import 'package:flutter/material.dart';

class ButtonPress extends StatelessWidget {
  final String text;
  final Function callback;

  const ButtonPress({required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: Colors.white),
      onPressed: () {
        print("button is pressed");
        callback(text);
      },
      child: Text(text),
    );
  }
}
