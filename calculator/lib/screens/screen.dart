import 'package:calculator/widgets/buttonPress.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var text = "";
  bool show = false;
  void onButtonPress(data) {
    print("button press vayo $data");
    setState(() {
      text = data;
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Screen",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                show ? text : "",
                style: TextStyle(fontSize: 32),
              ),
            ),
            SizedBox(height: 30),
            Container(
                child:
                    ButtonPress(text: "WhatsUp!!!", callback: onButtonPress)),
          ],
        ),
      ),
    );
  }
}
