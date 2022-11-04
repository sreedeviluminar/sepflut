import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListWithSeparated(),
  ));
}

class ListWithSeparated extends StatelessWidget {
  var datas = <String>['DATA 1', 'DATA 2', 'DATA 3'];
  var colors = <int>[600, 300, 100];
  var sepcolors = <int>[600, 300, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("MyList"),
        // ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                color: Colors.pink[colors[index]],
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(datas[index]),
                ),
              );
            },
            separatorBuilder: (context, index) {

              return Icon(
                Icons.account_tree,
                color: Colors.green[sepcolors[index]],
              );
            },
            itemCount: datas.length));
  }
}
