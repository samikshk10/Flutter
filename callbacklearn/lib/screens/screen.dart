import 'package:callbacklearn/widgets/my_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Welcome!",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Container(),
          Center(
            child: MyButton(
              number: number,
              handlePress: () {
                setState(() {
                  number++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
