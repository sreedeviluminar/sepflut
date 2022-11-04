import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home: StaggerdGridddd(),));
}

class StaggerdGridddd extends StatelessWidget {

  final List<StaggeredTile>  _cardTile =const <StaggeredTile> [
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
  ];

//List of Cards with color and icon
  final List<Widget> _listTile = <Widget>[
    BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
    BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
    BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
    BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
    BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.access_alarms),
    BackGroundTile(backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
    BackGroundTile(backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
    BackGroundTile(backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
    BackGroundTile(backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: StaggeredGridView.count(
         crossAxisCount: 4,
         staggeredTiles: _cardTile,
         mainAxisSpacing: 4,
         crossAxisSpacing: 4,
         children: _listTile,
       ),
    );
  }
}

class BackGroundTile extends StatelessWidget {

  final Color? backgroundColor;
  final IconData icondata;

  BackGroundTile({ this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}