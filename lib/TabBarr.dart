import 'package:flutter/material.dart';
import 'package:sepflut/Gnormalgrid.dart';

import 'listview_with_builder.dart';
import 'listview_with_separator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabView',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MyTab"),
          actions: [
            Icon(Icons.search),
             PopupMenuButton(itemBuilder: (context){
               return [
                 const  PopupMenuItem(child: Text("Settings")),
                 const  PopupMenuItem(child: Text("Version")),
                 const  PopupMenuItem(child: Text("Help")),
                 const  PopupMenuItem(child: Text("About"))
               ];
             })
          ],
          backgroundColor: Color(0xff003425),
          bottom: const TabBar(
            tabs: [
              Tab(
                iconMargin:EdgeInsets.only(left: 2),
                icon: Icon(Icons.camera_alt,size: 20,),
              ),
              Tab(
              //  height: 10,
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.account_box_outlined),
                text: "Account",
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: "Alarm",
              ),
            ],),),
        body:  TabBarView(
          children: [
            List_With_Builder(),
            ListWithSeparated(),
            GridNormal(),
            GridNormal(),

            // Center(
            //   child: Icon(Icons.home),
            // ),
            // Center(
            //   child: Icon(Icons.account_circle),
            // ),
            // Center(
            //   child: Icon(Icons.alarm),
            // )
          ],
        ),
      ),
    );
  }
}