import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDemo extends StatelessWidget {
  final Post post;

  PostDemo({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${post.title}',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    post.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${post.title}',
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        '${post.author}',
                        style: Theme.of(context).textTheme.subhead,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text('${post.description}',
                          style: TextStyle(
                              color: Colors.blueGrey, fontSize: 18.0)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
