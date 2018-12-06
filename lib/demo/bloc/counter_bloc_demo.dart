import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return StreamBuilder(
        initialData: 0,
        stream: _counterBloc.count,
        builder: (context, snapshot) {
          return Center(
            child: ActionChip(
                label: Text('${snapshot.data.toString()}'),
                onPressed: () {
                  _counterBloc.counter.add(1);
                }),
          );
        });
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      onPressed: () {
        _counterBloc.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({this.child, this.bloc}) : super(child: child);

  static CounterProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterProvider);
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }
}

class CounterBloc {
  final StreamController<int> _counterActionController =
      StreamController<int>();

  StreamSink<int> get counter => _counterActionController.sink;

  int _count = 0;
  final StreamController<int> _counterController = StreamController<int>();

  Stream<int> get count => _counterController.stream;

  void log() {
    print('CounterBLoC');
  }

  CounterBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData(int event) {
    print('Data:$event');
    _count = event + _count;
    _counterController.add(_count);
  }

  void disPose() {
    _counterActionController.close();
    _counterController.close();
  }
}
