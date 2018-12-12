import 'package:flutter/material.dart';
import 'package:myflutter/model/post.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true, // 标题是否位于标题栏中间
      ),
      body: ListView.builder(itemBuilder: _itemBuilder),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 26.0,
          )
        ],
      ),
    );
  }
}
