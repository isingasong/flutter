import 'package:flutter/material.dart';
class BreakfastDemo extends StatefulWidget {
  @override
  _BreakfastDemoState createState() => _BreakfastDemoState();
}

class _BreakfastDemoState extends State<BreakfastDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Breakfast',style: TextStyle(color: Colors.cyan,fontSize: 33),),
    );
  }
}
