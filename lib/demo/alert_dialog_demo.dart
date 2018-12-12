import 'package:flutter/material.dart';
import 'dart:async';

enum Option { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String yourChoice = 'Nothing';

  Future _openAlartDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Aler Dialog'),
            content: Text('What do you want to do'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Option.Cancel);
                  },
                  child: Text('Cancel')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Option.Ok);
                  },
                  child: Text('Ok')),
            ],
          );
        });
    switch (action) {
      case Option.Ok:
        setState(() {
          yourChoice = 'Ok';
        });
        break;
      case Option.Cancel:
        setState(() {
          yourChoice = 'Cancel';
        });
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $yourChoice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: _openAlartDialog,
                  child: Text('AlertButton'),
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
