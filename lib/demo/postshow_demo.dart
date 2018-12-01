import 'package:flutter/material.dart';
import '../model/post.dart';
class PostShowDemo extends StatelessWidget{
  final Post post;

  PostShowDemo({
    @required this.post,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(aspectRatio: 16/9,
            child:Image.network(post.imageUrl,fit: BoxFit.cover,),
          ),

          Container(
            padding: EdgeInsets.all(18.0),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: Theme.of(context).textTheme.title,),
                Text('${post.author}',style: Theme.of(context).textTheme.subhead,),
                SizedBox(height:12.0),
                Text('${post.description}',style: Theme.of(context).textTheme.body1,),
              ],
            ),
          )
        ],
      ),
    );
  }
}