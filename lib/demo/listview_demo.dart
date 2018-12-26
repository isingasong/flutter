import 'package:myflutter/demo/post_demo.dart';
import 'package:myflutter/model/post.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _itemBuilder);
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(6.0),
      child: Stack(
        children: <Widget>[
          Column(
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
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.4),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostDemo(post: posts[index])));
              },
            ),
          ))
        ],
      ),
    );
  }
}
