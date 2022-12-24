import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
