import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: _radioValue,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.red,
          ),
          Radio(
            value: 1,
            groupValue: _radioValue,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.red,
          ),
          Radio(
            value: 2,
            groupValue: _radioValue,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.red,
          ),
          Radio(
            value: 3,
            groupValue: _radioValue,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
