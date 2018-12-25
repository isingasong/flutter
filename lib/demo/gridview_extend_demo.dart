import 'package:flutter/material.dart';

class GridViewExtendDemo extends StatelessWidget {


  List<Widget> _gridviewitem(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: Text('Item:$index',style: TextStyle(fontSize: 26.0,color: Colors.white,),),

      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridViewBuilderDemo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: GridView.extent(
        maxCrossAxisExtent:160.0 ,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        scrollDirection: Axis.vertical,
        children: _gridviewitem(100),
      ),
    );
  }
}
