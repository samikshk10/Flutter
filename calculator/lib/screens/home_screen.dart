import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:eval_ex/expression.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = "0";
  String math_exp = "";
  List buttons = [
    '9',
    '8',
    '7',
    '/',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '*',
    'C',
    '0',
    '=',
    '+'
  ];
  void buttonPressed(data) {
    setState(() {
      if (output == '0')
        output = data;
      else if (data == "=") {
        print(math_exp);
        Expression exp = Expression(math_exp);
        output = exp.eval().toString();
      } else if (data == "+" || data == "-" || data == "*" || data == "/") {
        output = "";
        math_exp += output;

        print("operation button is pressed");
      } else if (data == "C") {
        output = "0";
      } else
        output += data;
      math_exp += data;
    });
    print(math_exp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              alignment: Alignment.bottomRight,
              child: Text(
                output,
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        child: CalculatorButton(
                            label: buttons[index], callback: buttonPressed),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
