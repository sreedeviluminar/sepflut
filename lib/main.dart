import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit:BoxFit.fill,
                image: NetworkImage(
                    "https://i.pinimg.com/originals/3b/ef/27/3bef27693c812b4762a9f363231ad5d2.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ///fetching image from asset way 1
              Image(
                image: AssetImage("assets/images/climatechange.png"),
                height: 100,
                width: 100,
              ),

              ///fetching image from asset way 2
              //Image.asset("assets/images/climatechange.png"),
              Text("MYAPP", style: TextStyle(fontSize: 40, color: Colors.orange)),
            ],
          ),
        ),
      ),
    );
  }
}
