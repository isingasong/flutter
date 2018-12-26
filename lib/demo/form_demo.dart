import 'package:flutter/material.dart';
import 'package:myflutter/demo/login_demo.dart';
import 'package:myflutter/demo/textfiled_demo.dart';
import 'package:myflutter/demo/theme_demo.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.blueGrey),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
//                TextFeilDemo(),
                LoginDemo(),
              ],
            ),
          )),
    );
  }
}
