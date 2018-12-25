import 'package:flutter/material.dart';

class AboutDemo extends StatelessWidget {
  final String title;

  AboutDemo({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
        centerTitle:true,

      ),
    );
  }
}
