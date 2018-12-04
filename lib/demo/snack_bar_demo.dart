import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Loading...'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {},
            ),
          ));
        },
        child: Text('Open SnackBar'));
  }
}
