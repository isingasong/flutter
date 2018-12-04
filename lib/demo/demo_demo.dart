import 'package:flutter/material.dart';

class DemoDemo extends StatefulWidget {
  @override
  _DemoDemoState createState() => _DemoDemoState();
}

class _DemoDemoState extends State<DemoDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
