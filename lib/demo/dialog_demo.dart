import 'package:flutter/material.dart';
import 'dart:async';

enum Option { A, B, C }

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  String _choice = 'Nothing';

  _pressedSomething() async {
    final choice = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('dialogdemo'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      },
    );
    switch (choice) {
      case Option.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B';
        });

        break;
      case Option.C:
        setState(() {
          _choice = 'C';
        });

        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: _pressedSomething,
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.mood,
            color: Colors.white,
            size: 33.0,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text('your choice is $_choice'),
      ],
    );
  }
}
