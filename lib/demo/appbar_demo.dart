import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  @override
  _AppBarDemoState createState() => _AppBarDemoState();

}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'home',
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint('search button is pressed')),
        IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'more',
            onPressed: () => debugPrint('more button is pressed')),
      ],
      elevation: 0.0,
      centerTitle: true,
      // 标题是否位于标题栏中间
      bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.white,
          indicatorWeight: 1.0,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.beach_access),

            ),
            Tab(
              icon: Icon(Icons.wb_sunny),
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
            ),
          ]),
    );
  }
}

