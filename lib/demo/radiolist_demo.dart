import 'package:flutter/material.dart';

class RadioListDemo extends StatefulWidget {
  @override
  _RadioListDemoState createState() => _RadioListDemoState();
}

class _RadioListDemoState extends State<RadioListDemo> {
  int _currentValue = 0;

  void _currentStateChanged(int value) {
    setState(() {
      _currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RadioListTile(
          value: 0,
          groupValue: _currentValue,
          onChanged: _currentStateChanged,
          activeColor: Colors.redAccent,
          title: Text('Options A'),
          subtitle: Text("This is a description"),
          secondary: Icon(Icons.filter_1),
          selected: _currentValue == 0,
        ),
        RadioListTile(
          value: 1,
          groupValue: _currentValue,
          onChanged: _currentStateChanged,
          activeColor: Colors.redAccent,
          title: Text('Options B'),
          subtitle: Text("This is a description"),
          secondary: Icon(Icons.filter_2),
          selected: _currentValue == 1,
        ),
        RadioListTile(
          value: 2,
          groupValue: _currentValue,
          onChanged: _currentStateChanged,
          activeColor: Colors.redAccent,
          title: Text('Options C'),
          subtitle: Text("This is a description"),
          secondary: Icon(Icons.filter_3),
          selected: _currentValue == 2,
        ),
      ],
    );
  }
}
