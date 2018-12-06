import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _publishSubject;

  @override
  void initState() {
    super.initState();
    _publishSubject = PublishSubject<String>();

    _publishSubject.debounce(Duration(milliseconds: 500)).listen((data) => print(data));

//    Observable<String> _observable =
//    Observable(
//        Stream.fromIterable(['What can I do for you', 'Can I help you']));
//    Observable.fromFuture(Future.value('May I help you'));
//    Observable.fromIterable(['hello','max']);
//    Observable.just('I am looking for a suitable life');
//    Observable.periodic(Duration(seconds: 3),(x) => x.toString());
//    _observable.listen(print);

//    ReplaySubject<String> _subject = ReplaySubject<String>();
//
//    _subject.add('hello');
//    _subject.add('max');
//    _subject.add('good job');
//    _subject.listen((data) => print('Listen 1:$data'));
//    _subject.listen((data) => print('Listen 2:${data.toUpperCase()}'));
//
//    _subject.close();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _publishSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
        ),
        child: TextField(
          onChanged: (value) {
            _publishSubject.add('onChanged:$value');
          },
          onSubmitted: (value) {
            _publishSubject.add('onSubmitted:$value');
          },
          decoration: InputDecoration(labelText: 'Content', filled: true),
        ));
  }
}
