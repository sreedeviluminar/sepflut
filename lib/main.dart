import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.ac_unit, size: 70, color: Colors.indigo,),
            Text("SAMPLE APP",
              style: TextStyle(color: Colors.orangeAccent, fontSize: 30),),
          ],
        ),
      ),
    );
  }

  l

  ̥
}
