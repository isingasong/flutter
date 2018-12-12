import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/bloc/counter_bloc_demo.dart';
class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BlocDemo'),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      ),
    );
  }
}
