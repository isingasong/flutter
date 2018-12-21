import 'package:flutter/material.dart';
import 'package:myflutter/demo/appbar_demo.dart';
import 'package:myflutter/demo/bottom_navigationbar_demo.dart';
import 'package:myflutter/demo/breakfast_demo.dart';
import 'package:myflutter/demo/drawer_demo.dart';
import 'package:myflutter/demo/hotel_demo.dart';
import 'package:myflutter/demo/listview_demo.dart';
import 'package:myflutter/demo/rowing_demo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'home',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'search',
                  onPressed: () => debugPrint('search button is pressed')),
              IconButton(
                  icon: Icon(Icons.more_vert),
                  tooltip: 'more',
                  onPressed: () => debugPrint('more button is pressed')),
            ],
            elevation: 0.0,
            centerTitle: true,
            // 标题是否位于标题栏中间
          ),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: <Widget>[
                TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.white,
                    indicatorWeight: 1.0,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(Icons.beach_access),

                      ),
                      Tab(
                        icon: Icon(Icons.wb_sunny),
                      ),
                      Tab(
                        icon: Icon(Icons.ac_unit),
                      ),

                    ]),

              ],

              ),
              TabBarView(children: <Widget>[
                ListViewDemo(),
                Icon(
                  Icons.wb_sunny,
                  size: 128,
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.grey,
                  child: Icon(
                    Icons.ac_unit,
                    size: 128,
                    color: Colors.white,
                  ),
                ),
                RowingDemo(),
                BreakfastDemo(),
                HotelDemo(),
              ]),
            ],

          ),


          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
