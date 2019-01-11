import 'package:flutter/material.dart';

class ListItemDemo extends StatelessWidget {
  final String title;
  final Widget page;

  ListItemDemo({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(title,style: TextStyle(color: Colors.black,fontSize: 18.0,fontStyle: FontStyle.italic),),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => page),
              );
            },
          ),
          Container(
            height: 1.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
