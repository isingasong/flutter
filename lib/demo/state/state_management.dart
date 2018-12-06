import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
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

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}

class CounterWrapper  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increaseCount() {
    _count++;
    notifyListeners();
  }
}