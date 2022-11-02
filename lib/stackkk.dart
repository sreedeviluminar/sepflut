import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStack(),));
}
class MyStack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stackkk"),
        ),
        body: Stack(
          children: [
            Image.network(
                'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover),
            Positioned(
              // The Positioned widget is used to position the text inside the Stack widget
              bottom: 10,
              right: 10,

              child: Container(
                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                width: 300,
                color: Colors.black54,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'I Like Potatoes And Oranges',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}