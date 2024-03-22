import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About page'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => {
                    // Navigator.pop(context),
                    Navigator.pushNamed(context, '/'),
                  },
              child: Text("Go to home page"))),
    );
  }
}
