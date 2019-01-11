import 'package:flutter/material.dart';

class SwitchListDemo extends StatefulWidget {
  @override
  _SwitchListDemoState createState() => _SwitchListDemoState();
}

class _SwitchListDemoState extends State<SwitchListDemo> {
  bool _switchOne = false;
  bool _switchTwo = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SwitchListTile(
          value: _switchOne,
          onChanged: (value) {
            setState(() {
              _switchOne = value;
            });
          },
          activeColor: Colors.amber,
          title: Text('Switch A'),
          subtitle: Text("This is a switch"),
          secondary: Icon(
            _switchOne ? Icons.mood : Icons.mood_bad,
            size: 33.0,
          ),
          selected: _switchOne,
        ),
        SwitchListTile(
          value: _switchTwo,
          onChanged: (value) {
            setState(() {
              _switchTwo = value;
            });
          },
          activeColor: Colors.amber,
          title: Text('Switch B'),
          subtitle: Text("This is a switch"),
          secondary: Icon(
            _switchTwo ? Icons.brightness_7 : Icons.brightness_3,
            size: 33.0,
          ),
          selected: _switchTwo,
        )
      ],
    );
  }
}
