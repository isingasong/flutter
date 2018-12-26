import 'package:flutter/material.dart';
import 'package:myflutter/home/home.dart';

class TextFeilDemo extends StatefulWidget {
  @override
  _TextFeilDemoState createState() => _TextFeilDemoState();
}

class _TextFeilDemoState extends State<TextFeilDemo> {
  String account;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (value) {
            debugPrint(' AccountValue:$value');
            account = value;
          },
          onSubmitted: (value) {
            account = value;
          },
          decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              size: 28.0,
            ),
            labelText: 'Account',
            hintText: 'Please input your account.',
            filled: true,
            // 带背景颜色
            border: OutlineInputBorder(),
          ),
        ),

        SizedBox(height: 16.0,),
        TextField(
          onChanged: (value) {
            debugPrint(' PasswordValue:$value');
          },
          onSubmitted: (value) {
            if (value == 'max' && account == 'max') {
              debugPrint(' PasswordValue:$value');
              Navigator.pushNamed(context, '/');

            } else {
              debugPrint(' SubmitValue:$value,failed');
            }
          },
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              size: 28.0,
            ),
            labelText: 'Password',
            hintText: 'Please input your password.',
            filled: true,
            // 带背景颜色
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
