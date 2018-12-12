import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetKey.currentState.showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          color: Colors.grey[300],
          height: 50.0,
          width: double.infinity,
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text('this is test,test'),
              Expanded(
                  child: Text(
                'this is test',
                textAlign: TextAlign.right,
              ))
            ],
          ),
        ),
      );
    });
  }

  Future _openMOdalBottomSheet() async{
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 180,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Option A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                ),
              ],
            ),
          );
        });

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: _openBottomSheet,
                    color: Colors.blue,
                    child: Text('Open Bottom Sheet')),
                SizedBox(
                  width: 10.0,
                ),
                FlatButton(
                    onPressed: _openMOdalBottomSheet,
                    color: Colors.blue,
                    child: Text('Open Modal Bottom Sheet')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
