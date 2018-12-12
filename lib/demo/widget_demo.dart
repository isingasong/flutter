import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/popup_button_demo.dart';
class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupButttonDemo'),
        centerTitle:true,
      ),
      body: Container(
        child: PopupButtonDemo(),
      ),
    );
  }
}