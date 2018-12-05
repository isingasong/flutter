import 'package:flutter/material.dart';
class StateManagementDemo extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Chip(label: Text('$_count')),

      ),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
        _count++;
        print(_count);
      }),
    );
  }
}
