import 'package:flutter/material.dart';

class AboutDemo extends StatelessWidget {
  final String title;

  AboutDemo({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
