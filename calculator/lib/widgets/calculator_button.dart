import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Function callback;

  const CalculatorButton(
      {required this.label, this.color, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        print("button is pressed");
        callback(label);
      },
      child: Text(label, style: TextStyle(fontSize: 18)),
    );
  }
}
