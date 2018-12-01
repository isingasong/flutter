import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text('MAXWORLD'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => debugPrint('Seatch is pressed'),
          tooltip: 'Search',
        )
      ],
      elevation: 1.0,
      bottom: TabBar(
        unselectedLabelColor: Colors.black,
        indicatorColor: Colors.greenAccent,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 1.0,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.local_florist),
          ),
          Tab(
            icon: Icon(Icons.change_history),
          ),
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
        ],
      ),
    );
  }

}