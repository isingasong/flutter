import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      elevation: 10.0,
      backgroundColor: Colors.cyan,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

    final Widget _floatingExtendActionButton = FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(
          Icons.remove,
          color: Colors.white,
        ),
        label: Text(
          'subtraction',
          style: TextStyle(color: Colors.white),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ActionButtonDemo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _floatingActionButton,
      body: Center(
          child: _floatingExtendActionButton,
      ),

    );
  }
}
