import 'package:flutter/material.dart';
import 'package:myflutter/demo/listview_demo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true, // 标题是否位于标题栏中间
      ),
      body: ListViewDemo(),
    );
  }


}
