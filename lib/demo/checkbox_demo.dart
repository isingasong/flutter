import 'package:flutter/material.dart';
class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  bool _checkBoxState = true;

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
            CheckboxListTile(value: _checkBoxState, onChanged: (value){
              setState(() {
                _checkBoxState = value;
              },);
            },
            title: Text('CheckBox Item'),
            subtitle: Text("Description"),
            secondary: Icon(Icons.bookmark),
            selected:_checkBoxState,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: _checkBoxState,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxState = value;
                      });
                    }, )


              ],
            )
          ],
        ),

      ),
    );
  }
}
