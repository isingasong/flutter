import 'package:flutter/material.dart';

class TextDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: 'www.max@max',
          style: TextStyle(
            color: Colors.deepPurple,
            fontStyle: FontStyle.italic,
            fontSize: 18.0,
            fontWeight: FontWeight.w500
          ),
          children: [
            TextSpan(
              text: '.com',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.red

              ),
            ),
          ],
        ));
  }
}
