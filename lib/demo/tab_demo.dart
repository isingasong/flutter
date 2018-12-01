import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app2/demo/basic_demo.dart';
import 'package:flutter_app2/demo/layout_demo.dart';
import 'package:flutter_app2/demo/listview_demo.dart';
import 'package:flutter_app2/demo/silver_demo.dart';
import 'package:flutter_app2/demo/view_demo.dart';
class TabDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  TabBarView(
      children: <Widget>[
        ListViewDemo(),
        BasicDemo(),
        LayoutDemo(),
        ViewDemo(),
        SilverDemo(),
        Icon(
          Icons.local_florist,
          size: 128.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.change_history,
          size: 128.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.directions_bike,
          size: 128.0,
          color: Colors.yellow,
        ),
      ],
    );
  }
}