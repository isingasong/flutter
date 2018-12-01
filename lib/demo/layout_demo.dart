import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StackDemo(),

        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(9, 77, 255, 1.0),
      ),
    );
  }

}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              Icons.star,
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 60.0,
          height: 60.0,
          child: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ])),
            child: Icon(
              Icons.brightness_2,
              size: 34.0,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          top: 10.0,
          child: Icon(
            Icons.star,
            size: 24.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 40.0,
          top: 38.0,
          child: Icon(
            Icons.star,
            size: 14.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 28.0,
          top: 100.0,
          child: Icon(
            Icons.star,
            size: 20.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 10.0,
          top: 70.0,
          child: Icon(
            Icons.star,
            size: 10.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 22.0,
          top: 60.0,
          child: Icon(
            Icons.star,
            size: 9.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 81.0,
          top: 80.0,
          child: Icon(
            Icons.star,
            size: 11.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 60.0,
          top: 130.0,
          child: Icon(
            Icons.star,
            size: 5.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 20.0,
          bottom: 10.0,
          child: Icon(
            Icons.star,
            size: 7.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 22.0,
          bottom: 30.0,
          child: Icon(
            Icons.star,
            size: 34.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 73.0,
          bottom: 77.0,
          child: Icon(
            Icons.star,
            size: 11.0,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 55.0,
          bottom: 88.0,
          child: Icon(
            Icons.star,
            size: 4.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 28.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 40,
      height: size + 40,
      color: Color.fromRGBO(3, 99, 222, 1.0),
    );
  }
}
