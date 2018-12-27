import 'package:flutter/material.dart';
import 'package:myflutter/demo/button_bar_demo.dart';
import 'package:myflutter/demo/expanedbutton_demo.dart';
import 'package:myflutter/demo/fixedbutton_demo.dart';
import 'package:myflutter/demo/flatbutton_demo.dart';
import 'package:myflutter/demo/outlinebutton_demo.dart';
import 'package:myflutter/demo/raisedbutton_demo.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ButtonDemo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButtonDemo(),
            RaisedButtonDemo(),
            OutlineButtonDemo(),
            FixedButtonDemo(),
            ExpendedButtonDemo(),
            ButtonBarDemo(),
          ],
        ),
      ),
    );
  }
}
