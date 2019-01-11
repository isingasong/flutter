import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchState = false;
  void _switchstateChanged(bool value) {
    setState(() {
      _switchState = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(_switchState ? Icons.mood :Icons.mood_bad,color: Colors.amberAccent,size: 33.0),
        Switch(value: _switchState, onChanged: _switchstateChanged,
        activeColor: Colors.greenAccent,),
      ],
    );
  }
}
