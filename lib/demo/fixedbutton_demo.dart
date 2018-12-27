import 'package:flutter/material.dart';


/// 控制按钮的宽高
///
class FixedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          child: RaisedButton(
              onPressed: () {},
              child: Text(
                'Button0',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.grey,
              elevation: 10.0,
              splashColor: Colors.cyanAccent,
              highlightColor: Colors.blue.withOpacity(0.2)),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.cyan,
          ),
          color: Colors.grey,
          label: Text('Button'),
          elevation: 10.0,
          textColor: Colors.cyan,
          splashColor: Colors.blueGrey,
          highlightColor: Colors.blue.withOpacity(0.2),
        )
      ],
    );
  }
}
