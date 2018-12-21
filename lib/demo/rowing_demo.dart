import 'package:flutter/material.dart';
class RowingDemo extends StatefulWidget {
  @override
  _RowingDemoState createState() => _RowingDemoState();
}

class _RowingDemoState extends State<RowingDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Rowing',style: TextStyle(color: Colors.cyan,fontSize: 33),),
    );
  }
}
