import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextSpan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Align Widget'),
            ),
        body: Center(
            child: Container(
              height: 240.0,
              width: 240.0,
              color: Colors.blue,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/apple.png",
                  width: 100,
                ),
              ),
            )));
  }
}
