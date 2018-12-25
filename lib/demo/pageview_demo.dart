import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PageViewDemo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: PageView(
        pageSnapping: false,
        // 是否自动滑动
        reverse: false,
        // 是否倒置
        scrollDirection: Axis.vertical,
        // 滑动方向
        onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
        controller: PageController(
          initialPage: 1,
          keepPage: false,
          viewportFraction: 1.0,
        ),

        children: <Widget>[
          Container(
            color: Colors.cyan,
            alignment: Alignment.center,
            child: Text(
              'ONE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Text(
              'TWO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Text(
              'THREE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
