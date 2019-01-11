import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _currentState = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(value: _currentState, onChanged:(value) {
          setState(() {
            _currentState = value;
          });
        },
        activeColor: Colors.lightBlueAccent,)
      ],
    );}
}
