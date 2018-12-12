import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/http/http_home_demo.dart';
class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: HttpDemoHome(),
    );
  }
}
