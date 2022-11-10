import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 12.0, end: 50.0).animate(controller!)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
  }

  void increaseFontSize() {
    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter')),
      ),
      body: ListView(children: <Widget>[
        Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              'Hello,This is a basic animation in Flutter.',
              style: TextStyle(fontSize: animation?.value),
            )),
        ElevatedButton(
          onPressed: () => {increaseFontSize()},
          child: const Text('Bigger Font'),
        )
      ]),
    ));
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
