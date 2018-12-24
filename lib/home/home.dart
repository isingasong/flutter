import 'package:flutter/material.dart';
import 'package:myflutter/demo/appbar_demo.dart';
import 'package:myflutter/demo/bottom_navigationbar_demo.dart';
import 'package:myflutter/demo/breakfast_demo.dart';
import 'package:myflutter/demo/drawer_demo.dart';
import 'package:myflutter/demo/hotel_demo.dart';
import 'package:myflutter/demo/listview_demo.dart';
import 'package:myflutter/demo/rowing_demo.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
   int _currentIndex = 0;

  void _tapIndexHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    var _body = new IndexedStack(
      children: <Widget>[
        new RowingDemo(),
        new BreakfastDemo(),
        new HotelDemo(),
      ],
      index: _currentIndex,
    );
    return Scaffold(
      body: _body,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.cyan,
          onTap: _tapIndexHandler,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.rowing), title: Text('Rowing')),
            BottomNavigationBarItem(
                icon: Icon(Icons.free_breakfast), title: Text('Breakfast')),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel), title: Text('hotle')),
          ]),
    );
  }
}
