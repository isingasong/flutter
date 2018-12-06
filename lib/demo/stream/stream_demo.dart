import 'dart:async';

import 'package:flutter/material.dart';
class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('StreamDemo'),
       elevation: 0.0,
       centerTitle: true,
     ), 
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription  _streamSubscription;
  StreamController<String> _streamController;
  StreamSink _streamSink;
  String _data = '...';

  @override
  void dispose() {
    // TODO: implement dispose
    _streamController.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Create a stream');
//    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamController = StreamController.broadcast();
    _streamSink = _streamController.sink;

    print('Start listening on a stream.');
    _streamSubscription = _streamController.stream.listen(onData,onError: onError,onDone: onDone);
    _streamController.stream.listen(onDataTwo,onError: onError,onDone: onDone);
    print('initialize completed.');
    
  }
  
  void onError(error) {
    print('Error:$error');
    
  }
  
  void onDone() {
    print('Done!');
  }
  
  void onData(String stream ) {
    setState(() {
      _data = stream;
    });
    print('how:$stream');
  }
  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 5));
//    throw('Something happened');
    return 'hello~ max';
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
                stream:_streamController.stream,
                initialData:'...',
                builder: (context,snapshot){
                  return Text('${snapshot.data}');
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: _addDataToStream, child: Text('Add')),
                FlatButton(onPressed: _pauseStream, child: Text('Pause')),
                FlatButton(onPressed: _resumeStream, child: Text('Resume')),
                FlatButton(onPressed: _cancelStream, child: Text('Cancel')),
              ],
            ),
          ],
        )
      ),
    );
  }

  void _pauseStream() {
    print('pause subscription');
    _streamSubscription.pause();

  }

  void _resumeStream() {
    print('resume subscription');
    _streamSubscription.resume();

  }

  void _cancelStream() {
    print('cancel subscription');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async{
    print('Add data to stream');
    String data = await fetchData();
    print('what:$data');
//    _streamController.add(data);
    _streamSink.add(data);

  }

  void onDataTwo(String event) {
    print('onDataTwo:$event');
  }
}

