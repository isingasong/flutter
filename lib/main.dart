import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/animation/animation_demo.dart';
import 'package:flutter_app2/demo/appbar_demo.dart';
import 'package:flutter_app2/demo/bloc/bloc.demo.dart';
import 'package:flutter_app2/demo/bottomNavigationBar_Demo.dart';
import 'package:flutter_app2/demo/drawer_demo.dart';
import 'package:flutter_app2/demo/form_demo.dart';
import 'package:flutter_app2/demo/http/http_demo.dart';
import 'package:flutter_app2/demo/material_demo.dart';
import 'package:flutter_app2/demo/navigationbar_demo.dart';
import 'package:flutter_app2/demo/rxdart/rxdart_demo.dart';
import 'package:flutter_app2/demo/state/state_management.dart';
import 'package:flutter_app2/demo/state/state_management_stateful.dart';
import 'package:flutter_app2/demo/stream/stream_demo.dart';
import 'package:flutter_app2/demo/tab_demo.dart';
import 'model/post.dart';
import 'package:flutter_app2/demo/silver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      initialRoute: '/animation',
      routes: {
        '/form': (context) => ForeDemo(),
        '/about': (context) => Page(title: 'About'),
        '/material': (context) => MaterialDemo(),
        '/state-manangement': (context) => StateManagementDemo(),
        '/state-manangements': (context) => StateManagementStatefulDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.teal,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            drawer: DrawerDemo(),
            appBar: AppBar(
              title: Text('MAXWORLD'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint('Seatch is pressed'),
                  tooltip: 'Search',
                )
              ],
              elevation: 1.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.greenAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.local_florist),
                  ),
                  Tab(
                    icon: Icon(Icons.change_history),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                  ),
                  Tab(
                    icon: Icon(Icons.view_quilt),
                  ),
                ],
              ),
            ),
            body: TabDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
