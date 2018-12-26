import 'package:flutter/material.dart';
import 'package:myflutter/demo/about_demo.dart';

class NavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, '/about');
          }, child: Text('About'))
        ],
      ),
    );
  }
}
