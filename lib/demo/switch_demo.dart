import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemState =  false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemState,
              onChanged: (value) {
                setState(() {
                  _switchItemState = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemState ? Icons.alarm_on : Icons.alarm_off),
              selected: _switchItemState,),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('SwitchState$_switchItemState'),
                SwitchListTile(
                    value: _switchItemState,
                    onChanged: (value) {
                      setState(() {
                        _switchItemState = value;
                      });
                    },
                title: Text('Switch Item A'),
                subtitle: Text('Description'),
                secondary: Icon(_switchItemState ? Icons.alarm_off : Icons.alarm_on),
                selected: _switchItemState,)
              ],
            )
          ],
        ),
      )
    );
  }
}
