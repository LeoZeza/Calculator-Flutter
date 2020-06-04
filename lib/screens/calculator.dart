import 'package:calculator/components/display.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/keyboard.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      )
    );
  }
}