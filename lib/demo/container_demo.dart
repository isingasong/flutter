import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545662031447&di=d01906627255d55133d1655c83659971&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F9825bc315c6034a84d0cf125c6134954082376a3.jpg',),
          alignment: Alignment.center,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.3), BlendMode.softLight)
        )

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            child: Icon(
              Icons.local_florist,
              size: 40.0,
              color: Colors.white,
            ),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.white,width: 6.0,style: BorderStyle.solid),
//              borderRadius: BorderRadius.only(
//                topRight: Radius.circular(4.0),
//                topLeft: Radius.circular(4.0),
//                bottomLeft: Radius.circular(4.0),
//                bottomRight: Radius.circular(4.0),
//              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(4.0, 16.0),
                  spreadRadius: 0.0,
                  blurRadius: 30.0,
                )
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.redAccent,
                Colors.yellowAccent
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
            ),
          ),
        ],
      ),
    );
  }
}
