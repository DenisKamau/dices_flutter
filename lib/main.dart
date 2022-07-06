import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 2;

  void genDiceNumber() {
    setState(() {
      leftDicenumber = 1 + Random().nextInt(6);
      rightDicenumber = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // Replaced Flatbutton
            child: TextButton(
              child: Image.asset('images/dice$leftDicenumber.png'),
              onPressed: () {
                genDiceNumber();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDicenumber.png',
              ),
              onPressed: () {
                genDiceNumber();
              },
            ),
          ),
        ],
      ),
    );
  }
}
