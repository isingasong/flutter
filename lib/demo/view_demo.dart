import 'package:flutter/material.dart';
import 'package:myflutter/demo/gridveiw_builder_demo.dart';
import 'package:myflutter/demo/gridview_count_demo.dart';
import 'package:myflutter/demo/gridview_extend_demo.dart';
import 'package:myflutter/demo/pageview_builder_demo.dart';
import 'package:myflutter/demo/pageview_demo.dart';
import 'package:myflutter/demo/sliver_demo.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        GridViewCountDemo(),
        PageViewBuilderDemo(),
        PageViewDemo(),
        GridViewBuilderDemo(),
        GridViewExtendDemo(),
        SliverDemo(),
      ],
    );
  }
}
