import 'package:flutter/material.dart';

class CheckboxListTileDemo extends StatefulWidget {
  @override
  _CheckboxListTileDemoState createState() => _CheckboxListTileDemoState();
}

class _CheckboxListTileDemoState extends State<CheckboxListTileDemo> {
  bool _currentState = true;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _currentState,
      onChanged: (value) {
        setState(() {
          _currentState = value;
        });
      },
      activeColor: Colors.lightBlue,
      title: Text('CheckBox Item A'),
      subtitle: Text('This is description'),
      secondary: Icon(Icons.bookmark),
      selected: _currentState,
    );
  }
}
