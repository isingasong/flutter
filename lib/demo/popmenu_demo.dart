import 'package:flutter/material.dart';

class PopMenuDemo extends StatefulWidget {
  @override
  _PopMenuDemoState createState() => _PopMenuDemoState();
}

class _PopMenuDemoState extends State<PopMenuDemo> {
  String _currentItem = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PopMenuDemo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentItem),
                PopupMenuButton(
                  child: Icon(Icons.more_horiz),
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('home'),
                          value: 'home',
                        ),
                        PopupMenuItem(
                          child: Text('discovery'),
                          value: 'discovery',
                        ),
                        PopupMenuItem(
                          child: Text('more'),
                          value: 'more',
                        ),
                      ],
                  onSelected: (value) {
                    setState(() {
                      _currentItem = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
