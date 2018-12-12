import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
////    fetchPosts();
//    final post = {
//      'title': 'hello~,max',
//      'description': 'nice to meet you',
//    };
//
//    print(post['title']);
//    print(post['description']);
//    print(post);
//    print(post is Map);
//
//    final postJson = json.encode(post);
//    print(postJson);
//
//    final postJsonConverted = jsonDecode(postJson);
//    print(postJsonConverted);
//    print(postJsonConverted['title']);
//    print(postJsonConverted['decription']);
//    print(postJsonConverted is Map);
//
//    final postModel = Post.fromJson(postJsonConverted);
//    print('title:${postModel.title}');
//    print('description:${postModel.description}');
//
//    print('${json.encode(postModel)}');

//  fetchPosts().then((value) => print(value));
  }

  Future<List<Post>> fetchPosts() async {
    final respose =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    if (respose.statusCode == 200) {
      final responseBody = json.decode(respose.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList();

      return posts;
    } else {
      throw Exception('Failed to fetch posts');
    }
//    print('statusCode: ${respose.statusCode}');
//    print('body:${respose.body}');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot snapShot) {
          print('data:$snapShot');
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('Loading......'),
            );
          }

          return ListView(
            children: snapShot.data.map<Widget>((item) {
              return ListTile(
                title: Text(item.title),
                subtitle: Text(item.author),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
              );
            }).toList(),
          );
        });
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(this.title, this.description, this.author, this.id, this.imageUrl);

  Post.fromJson(Map json)
      : title = json['title'],
        description = json['description'],
        id = json['id'],
        author = json['author'],
        imageUrl = json['imageUrl'];

  Map toJson() => {
        'title': title,
        'description': description,
      };
}
