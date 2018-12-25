import 'package:flutter/material.dart';
import 'package:myflutter/demo/SliverGridDemo.dart';
import 'package:myflutter/demo/sliver_list_demo.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('MAXVALU @ FLUTTER',textAlign:TextAlign.center,style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400
              ),),
              background: Icon(Icons.local_florist,color: Colors.white,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}
