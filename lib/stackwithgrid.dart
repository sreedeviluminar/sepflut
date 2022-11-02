import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyStackwithgrid(),
  ));
}

class MyStackwithgrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stackkk"),
        ),
        body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: List.generate(20, (index) {
              return Stack(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    width: 500,
                    height: 500,
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 35,
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
              );
            })));
  }
}
