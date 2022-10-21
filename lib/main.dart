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
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/disp/15549a14589707.5628669c64769.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///fetching image from asset way 1
              Image.asset(
                "assets/images/food.png",
                height: 200,
                width: 200,
              ),

              ///fetching image from asset way 2
              //const Image(image: AssetImage("assets/images/food.png")),

              const Text("MYAPP",
                  style: TextStyle(fontSize: 40, color: Colors.orange)),
            ],
          ),
        ),
      ),
    );
  }
}
