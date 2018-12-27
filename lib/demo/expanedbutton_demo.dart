import 'package:flutter/material.dart';

/// 自动填充剩余空间，控制按钮所占空间比
class ExpendedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
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
        Expanded(
            flex: 2,
            child: RaisedButton.icon(
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
            )),
      ],
    );
  }
}
