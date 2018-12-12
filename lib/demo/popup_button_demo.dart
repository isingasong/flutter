import 'package:flutter/material.dart';

class PopupButtonDemo extends StatefulWidget {
  @override
  _PopupButtonDemoState createState() => _PopupButtonDemoState();
}

class _PopupButtonDemoState extends State<PopupButtonDemo> {
  String _popupItem = 'home';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_popupItem),
              PopupMenuButton(
                onSelected: (value) {
                  debugPrint('item: $value');
                  setState(() {
                    _popupItem = value;
                  });
                },
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('Home'),
                          value: 'Home',
                        ),
                        PopupMenuItem(
                          child: Text('Share'),
                          value: 'Share',
                        ),
                        PopupMenuItem(
                          child: Text('Setting'),
                          value: 'Setting',
                        ),
                      ])
            ],
          )
        ],
      ),
    );
  }
}
