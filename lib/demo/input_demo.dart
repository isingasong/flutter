import 'package:flutter/material.dart';
import 'package:myflutter/demo/checkbox_demo.dart';
import 'package:myflutter/demo/checkbox_listtile_demo.dart';
import 'package:myflutter/demo/datetime_demo.dart';
import 'package:myflutter/demo/radio_demo.dart';
import 'package:myflutter/demo/radiolist_demo.dart';
import 'package:myflutter/demo/slider_demo1.dart';
import 'package:myflutter/demo/switch_demo.dart';
import 'package:myflutter/demo/switchlist_demo.dart';

class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InputWidgeDemo',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CheckboxDemo(),
                CheckboxListTileDemo(),
                RadioDemo(),
                RadioListDemo(),
                SwitchDemo(),
                SwitchListDemo(),
                SliderDemo0(),
                DateTimeDemo(),
              ],
            ),
          ),
        ],
      )
    );
  }
}
