import 'package:flutter/material.dart';

/// 控制按钮直接的间距
class ButtonBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
            padding: EdgeInsets.symmetric(horizontal:8.0),
          )),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                  onPressed: () {},
                  child: Text(
                    'Button0',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                  splashColor: Colors.cyanAccent,
                  highlightColor: Colors.blue.withOpacity(0.2)),
              SizedBox(
                width: 16.0,
              ),
              OutlineButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.cyan,
                ),
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
                label: Text('Button'),
                textColor: Colors.cyan,
                splashColor: Colors.blueGrey,
                highlightColor: Colors.blue.withOpacity(0.2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
