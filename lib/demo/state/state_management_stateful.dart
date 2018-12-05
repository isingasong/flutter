import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementStatefulDemo extends StatefulWidget {
  @override
  _StateManagementStatefulDemoState createState() =>
      _StateManagementStatefulDemoState();
}

class _StateManagementStatefulDemoState
    extends State<StateManagementStatefulDemo> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('StateManagementDemo'),
            elevation: 0.0,
            centerTitle: true,
          ),
          body: CounterWrapper(),
          floatingActionButton: ScopedModelDescendant<CounterModel>(
            rebuildOnChange: false,
            builder: (context, _, model) => FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: model.increaseCount,
                ),
          )),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel> (
      builder: (context,_,model) => ActionChip(label: Text('${model.count}'), onPressed: model.increaseCount),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final VoidCallback increament = CounterProvider.of(context).increament;
    return ActionChip(
      label: Text('$count'),
      onPressed: increament,
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increament;
  final Widget child;

  CounterProvider({this.count, this.increament, this.child})
      : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increaseCount() {
    _count++;
  }
}
