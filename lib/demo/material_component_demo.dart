import 'package:flutter/material.dart';
import 'package:myflutter/demo/button_demo.dart';
import 'package:myflutter/demo/floatactionbutton_demo.dart';
import 'package:myflutter/demo/input_demo.dart';
import 'package:myflutter/demo/listitem_demo.dart';
import 'package:myflutter/demo/popmenu_demo.dart';
import 'package:myflutter/demo/simple_dialog_demo.dart';

class MaterialComponentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponent',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListItemDemo(title: 'ButtonDemo',page: ButtonDemo(),),
          ListItemDemo(title: 'FloatingActionButtonDemo',page: FloatingActionButtonDemo(),),
          ListItemDemo(title: 'PopMenuDemo',page: PopMenuDemo(),),
          ListItemDemo(title: 'InputDemo',page: InputDemo(),),
          ListItemDemo(title: 'SimpleDialogDemo',page: SimpleDialogDemo(),),

        ],
      ),
    );
  }
}
