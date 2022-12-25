import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Dice'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: const DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
