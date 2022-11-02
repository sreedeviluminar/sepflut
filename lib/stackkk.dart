import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStack(),
  ));
}
class MyStack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stackkk"),
          actions: [
            Icon(Icons.favorite),
            Icon(Icons.more_vert)
          ],
        ),
        body: Stack(
          children: [
            Image.network(
                'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover),
            Positioned(
              // The Positioned widget is used to position the text inside the Stack widget
              top: 100,
              left: 100,
              right: 100,
              bottom: 100,
              child: Container(
                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                width: 300,
                color: Colors.black54,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Text(
                      'I Like Potatoes And Oranges',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}