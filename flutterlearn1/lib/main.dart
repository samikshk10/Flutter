import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello world',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '$counter',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Increase counter by 1
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text('Increase++'),asdf
                ),
                ElevatedButton(
                  onPressed: () {
                    // Decrease counter by 1
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text('Decrease--'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
