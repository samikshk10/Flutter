import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  one() => {print("one")};
  two() async => {
        await Future.delayed(const Duration(seconds: 2), () {
          print("two");
        })
      };
  three() => {print("three")};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: one,
                child: const Text('One'),
              ),
              ElevatedButton(
                onPressed: two,
                child: const Text('Two'),
              ),
              ElevatedButton(
                onPressed: three,
                child: const Text('Three'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
