import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[300],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543557023393&di=30c5c587cffe39705ee5885c9cb12676&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Fback_pic%2F03%2F85%2F32%2F2657cc1e81b4475.jpg'),
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(
              Colors.cyan.withOpacity(0.5),
              BlendMode.lighten)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 主轴方向，居中对齐
        children: <Widget>[
          Container(
            child: Icon(
              Icons.directions_bike,
              size: 40.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  color: Colors.blue,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4.0, 6.0),
                    color: Colors.deepOrange,
                    blurRadius: 20.0,
                    spreadRadius: -6.0,
                  )
                ],
                shape: BoxShape.rectangle,
//              gradient: RadialGradient(
//                  colors:[
//                    Color.fromRGBO(6, 222, 111, 1.0),
//                    Color.fromRGBO(34, 55, 80, 1.0),
//                  ]),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(6, 222, 111, 1.0),
                  Color.fromRGBO(34, 55, 80, 1.0),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
      text: 'maxveils',
      style: TextStyle(
        color: Color.fromARGB(100, 255, 0, 0),
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      ),
      children: [
        TextSpan(
            text: '.com',
            style: TextStyle(
              color: Color.fromARGB(100, 0, 0, 255),
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            )),
      ],
    ));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 18.0);

  final String _author = '李白';
  final String _title = '把酒问月';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《 $_title》 -----$_author 青天有月来几时，我今停杯一问之：人攀明月不可得，月行却与人相随？皎如飞镜临丹阙，绿烟灭尽清辉发？但见... ',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
