import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Icon(Icons.adb,size: 80,color: Colors.green,),
              Text("MYAPP",style: TextStyle(fontSize: 30,color: Colors.red),),
            ],
          ),
        ),
    );
  }
}