import 'dart:core';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_With_Builder(),));
}
class List_With_Builder extends StatelessWidget {

  var datas  = <String>['DATA 1','DATA 2','DATA 3'];
  var colors = <int>[600, 500, 100];
//card shape =>shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("List2")),
      body: ListView.builder(
         itemCount: datas.length,
         itemBuilder: (BuildContext cntx ,int index){
            return Container(
                 height: 50,
                 color: Colors.purple[colors[index]],
                 child: Center(child: Text(datas[index]),),
            );
         }),
   );
  }
}