import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavitationBarDemoState();
  }
}

class _BottomNavitationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Map'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Main'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Person'),
        ),
      ],
    );
  }
}
