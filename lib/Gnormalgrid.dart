import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridNormal(),
  ));
}

class GridNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(
       gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 4,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
       ),
       children: [
              Container(color: Colors.purple,),
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.yellow,),
              Container(color: Colors.blueAccent,),
              Container(color: Colors.black,),
       ],
     ),
   );
  }
}