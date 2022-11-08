import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: Text("Dismiss showDialog"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            padding: EdgeInsets.only(top:20, left:20, right:20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(' Exit !!!!!!!!!!'),
                              content: Text('Do you really want to exit?'),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    child: Text('Yes')),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); //close Dialog
                                  },
                                  child: Text('No'),
                                ),

                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); //close Dialog
                                  },
                                  child: Text('Cancel'),
                                )
                              ],
                            );
                          });
                    },
                    child: Text("Show Dialog")
                ),

              ],)
        )
    );
  }
}