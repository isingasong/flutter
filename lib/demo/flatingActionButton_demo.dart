import 'package:flutter/material.dart';
class FlatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActopmButtpm = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
      elevation: 0.0,
    );

    final Widget _floatingActionButtonExtende = FloatingActionButton.extended(
        onPressed: () {}, icon: Icon(Icons.add), label: Text('Add'));

    return Scaffold(
      appBar: AppBar(
        title: Text('FlatingActionButton'),
        elevation: 0.0,
        centerTitle: true,
      ),
      floatingActionButton: _floatingActopmButtpm,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}