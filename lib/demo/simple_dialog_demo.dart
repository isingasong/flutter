import 'package:flutter/material.dart';
import 'package:myflutter/demo/alert_dialog_demo.dart';
import 'package:myflutter/demo/dialog_demo.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView(

        children: <Widget>[

          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DialogDemo(),
                AlertDialogDemo(),
              ],
            ),
          )

        ],
      ),
    );
  }
}
