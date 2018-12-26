import 'package:flutter/material.dart';
import 'package:myflutter/demo/about_demo.dart';
import 'package:myflutter/demo/post_demo.dart';
import 'package:myflutter/home/home.dart';
import 'package:myflutter/model/post.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => AboutDemo(title:'about'),
        '/post': (context) => PostDemo(post: Post(),),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,  // 设置primary颜色，主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }


}


