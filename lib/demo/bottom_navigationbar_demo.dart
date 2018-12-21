import 'package:flutter/material.dart';
import 'package:myflutter/demo/breakfast_demo.dart';
import 'package:myflutter/demo/hotel_demo.dart';
import 'package:myflutter/demo/rowing_demo.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  BottomNavigationBarDemoState createState() {
    return new BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  static int _currentIndex = 0;


  void _tapIndexHandler(int index) {
    setState(() {
      _currentIndex = index;

    });
  }

  var _body = new IndexedStack(
    children: <Widget>[
      new RowingDemo(),
      new BreakfastDemo(),
      new HotelDemo(),

    ],
    index: _currentIndex,
  );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.cyan,
        onTap: _tapIndexHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.rowing), title: Text('Rowing')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast), title: Text('Breakfast')),
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel), title: Text('hotle')),
        ]);
  }
}
