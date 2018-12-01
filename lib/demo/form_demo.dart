import 'package:flutter/material.dart';

class ForeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.teal),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFiledDemo()

              ],
            ),
          )),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return TextFeildState();
  @override
  TextFeildState createState() => TextFeildState();
}

class TextFeildState extends State<TextFiledDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'name',
        hintText: 'Please Input Your Name',
        border: OutlineInputBorder(),

        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
