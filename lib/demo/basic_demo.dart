import 'package:flutter/material.dart';
import 'package:myflutter/demo/container_demo.dart';
import 'package:myflutter/demo/layout_demo.dart';
import 'package:myflutter/demo/text_demo1.dart';
import 'package:myflutter/demo/text_demo2.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextDemo1(),
        TextDemo2(),
        ContainerDemo(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          LayoutDemo(Icons.radio),
          LayoutDemo(Icons.free_breakfast,size: 56.0,),
          LayoutDemo(Icons.local_dining),


        ],)

      ],
    );
  }
}
