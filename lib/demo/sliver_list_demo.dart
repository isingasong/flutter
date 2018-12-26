import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
            child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 16.0, blurRadius: 16.0, color: Colors.white)
                ],
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Positioned(
                top: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      posts[index].title,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    Text(
                      posts[index].author,
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ))
          ],
        ));
      }, childCount: posts.length),
    );
  }
}
