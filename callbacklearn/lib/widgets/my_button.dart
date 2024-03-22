import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final int number;
  final Function handlePress;
  const MyButton({super.key, required this.number, required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          print("button is pressed");
          handlePress();
        },
        child: Text('Click' + '$number'));
  }
}
