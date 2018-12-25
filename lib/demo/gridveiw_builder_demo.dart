import 'package:flutter/material.dart';
import 'package:myflutter/model/post.dart';

class GridViewBuilderDemo extends StatelessWidget {

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridViewBuilderDemo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: _itemBuilder,
      ),
    );
  }
}
