import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioState = 0;

  void _radioChangeState(int value) {
    setState(() {
      _radioState = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('RadioItemValue:$_radioState'),
              RadioListTile(
                value: 0,
                groupValue: _radioState,
                onChanged: _radioChangeState,
                selected: _radioState == 0,
                title: Text('Radio item one'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_1),
              ),
              RadioListTile(
                value: 1,
                groupValue: _radioState,
                onChanged: _radioChangeState,
                selected: _radioState == 1,
                title: Text('Radio Item two'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_2),
              ),
            ],
          )),
    );
  }
}
