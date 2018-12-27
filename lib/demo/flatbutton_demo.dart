import 'package:flutter/material.dart';

class FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text(
              'Button0',
              style: TextStyle(color: Colors.blueGrey),
            ),
            splashColor: Colors.cyanAccent,
            highlightColor: Colors.blue.withOpacity(0.2)),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.cyan,
          ),
          label: Text('Button'),
          textColor: Colors.cyan,
          splashColor: Colors.blueGrey,
          highlightColor: Colors.blue.withOpacity(0.2),
        )
      ],
    );
  }
}
