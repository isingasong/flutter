
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 42.0,
            color: Colors.red,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}