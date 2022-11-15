import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gradientt(),
  ));
}

class Gradientt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Colors.white, Colors.pink, Colors.yellow])),
      ),
    );
  }
}
