import 'package:flutter/material.dart';

class SizeBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 90.0,
          width: 60.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 44.0,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AspectRatio(aspectRatio: 16 / 9),
            SizedBox(
              height: 300.0,
              width: 200.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 44.0,
                ),
              ),
            ),
            Positioned(
              child: Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 24.0,
              ),
              width: 40.0,
              height: 20.0,
            ),
            Positioned(
              child: Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 24.0,
              ),
              width: 100.0,
              height: 100.0,
            ),
          ],
        ),
      ],
    );
  }
}
