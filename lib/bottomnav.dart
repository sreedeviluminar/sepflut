import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottomBar(),
  ));
}

class MyBottomBar extends StatefulWidget {
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int selectindex = 0;

  List bodys = const  <Widget>[
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Account'),),),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Search'),),),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Favorite'),),),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Home'),),),
  ];

 void onitemtapped(int index){
    setState(() {
      selectindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomBar'),
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(80),
              topLeft: Radius.circular(80)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            selectedItemColor:Colors.yellow ,
            backgroundColor: Colors.cyan,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "account",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "home")
            ],
            currentIndex: selectindex,
            onTap: onitemtapped,
          ),
        ),
      ),
      body: Center(
        child: bodys.elementAt(selectindex),
      ),
    );
  }
}
