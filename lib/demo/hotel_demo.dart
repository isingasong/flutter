import 'package:flutter/material.dart';
class HotelDemo extends StatefulWidget {
  @override
  _HotelDemoState createState() => _HotelDemoState();
}

class _HotelDemoState extends State<HotelDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hotel',style: TextStyle(color: Colors.cyan,fontSize: 33),),
    );
  }
}
