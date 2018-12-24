import 'package:flutter/material.dart';
class TextDemo1 extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: Colors.blueGrey,

  );

  String author = 'max';
  String title = 'sentence';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text('《$title》 ---$author     很多大道理都明白，但总得经过失去跌倒后，才能在痛和反省中找到自己。不是有句话这样说吗，自己炒的菜最香，自己种的果最甜，哪怕你花了很多时间。因为自己抹掉眼泪才是成长。我们用跌倒的疼痛换来坚定，正因为知道失去了什么，才知道该抓紧什么。所以不要害怕走弯路，任何经历都是在成长!',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,),
    );
  }
}
